
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ms_info {int dummy; } ;
struct rtsx_chip {struct ms_info ms_card; } ;


 int BLOCK_READ ;
 int BLOCK_WRITE ;
 int BUF_FULL ;
 scalar_t__ CHK_MS4BIT (struct ms_info*) ;
 int CLEAR_BUF ;
 int GET_INT ;
 int INT_REG_BREQ ;
 int INT_REG_CED ;
 int INT_REG_CMDNK ;
 int INT_REG_ERR ;
 int MS_BREQ_ERROR ;
 int MS_CARD ;
 int MS_CMD_NK ;
 int MS_EXTRA_SIZE ;
 int MS_FLASH_WRITE_ERROR ;
 int MS_MAX_RETRY_COUNT ;
 int MS_NO_CARD ;
 int MS_NO_ERROR ;
 int MS_SET_BAD_BLOCK_FLG (struct ms_info*) ;
 int MS_TM_NORMAL_READ ;
 int MS_TM_NORMAL_WRITE ;
 int NO_WAIT_INT ;
 int OverwriteFlag ;
 int PPBUF_BASE2 ;
 int READ_PAGE_DATA ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int SystemParm ;
 int WAIT_INT ;
 int WRITE_PAGE_DATA ;
 int WRITE_REG ;
 int detect_card_cd (struct rtsx_chip*,int ) ;
 int dev_dbg (int ,char*,...) ;
 int ms_read_bytes (struct rtsx_chip*,int ,int,int ,int*,int) ;
 int ms_read_extra_data (struct rtsx_chip*,int,int,int*,int) ;
 int ms_read_status_reg (struct rtsx_chip*) ;
 int ms_send_cmd (struct rtsx_chip*,int ,int ) ;
 int ms_set_err_code (struct rtsx_chip*,int ) ;
 int ms_set_page_status (int,int ,int*,int) ;
 int ms_set_rw_reg_addr (struct rtsx_chip*,int ,int,int ,int) ;
 int ms_transfer_tpc (struct rtsx_chip*,int ,int ,int ,int ) ;
 int ms_write_bytes (struct rtsx_chip*,int ,int,int ,int*,int) ;
 int ms_write_extra_data (struct rtsx_chip*,int,int,int*,int) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_read_register (struct rtsx_chip*,int ,int*) ;
 int setPS_Error ;
 int setPS_NG ;

__attribute__((used)) static int ms_copy_page(struct rtsx_chip *chip, u16 old_blk, u16 new_blk,
   u16 log_blk, u8 start_page, u8 end_page)
{
 struct ms_info *ms_card = &chip->ms_card;
 bool uncorrect_flag = 0;
 int retval, rty_cnt;
 u8 extra[MS_EXTRA_SIZE], val, i, j, data[16];

 dev_dbg(rtsx_dev(chip), "Copy page from 0x%x to 0x%x, logical block is 0x%x\n",
  old_blk, new_blk, log_blk);
 dev_dbg(rtsx_dev(chip), "start_page = %d, end_page = %d\n",
  start_page, end_page);

 retval = ms_read_extra_data(chip, new_blk, 0, extra, MS_EXTRA_SIZE);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 retval = ms_read_status_reg(chip);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 retval = rtsx_read_register(chip, PPBUF_BASE2, &val);
 if (retval)
  return retval;

 if (val & BUF_FULL) {
  retval = ms_send_cmd(chip, CLEAR_BUF, WAIT_INT);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;

  retval = ms_read_bytes(chip, GET_INT, 1, NO_WAIT_INT, &val, 1);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;

  if (!(val & INT_REG_CED)) {
   ms_set_err_code(chip, MS_FLASH_WRITE_ERROR);
   return STATUS_FAIL;
  }
 }

 for (i = start_page; i < end_page; i++) {
  if (detect_card_cd(chip, MS_CARD) != STATUS_SUCCESS) {
   ms_set_err_code(chip, MS_NO_CARD);
   return STATUS_FAIL;
  }

  retval = ms_read_extra_data(chip, old_blk, i, extra,
         MS_EXTRA_SIZE);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;

  retval = ms_set_rw_reg_addr(chip, OverwriteFlag,
         MS_EXTRA_SIZE, SystemParm, 6);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;

  ms_set_err_code(chip, MS_NO_ERROR);

  if (CHK_MS4BIT(ms_card))
   data[0] = 0x88;
  else
   data[0] = 0x80;

  data[1] = 0;
  data[2] = (u8)(old_blk >> 8);
  data[3] = (u8)old_blk;
  data[4] = 0x20;
  data[5] = i;

  retval = ms_write_bytes(chip, WRITE_REG, 6, NO_WAIT_INT,
     data, 6);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;

  retval = ms_send_cmd(chip, BLOCK_READ, WAIT_INT);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;

  ms_set_err_code(chip, MS_NO_ERROR);
  retval = ms_read_bytes(chip, GET_INT, 1, NO_WAIT_INT, &val, 1);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;

  if (val & INT_REG_CMDNK) {
   ms_set_err_code(chip, MS_CMD_NK);
   return STATUS_FAIL;
  }

  if (val & INT_REG_CED) {
   if (val & INT_REG_ERR) {
    retval = ms_read_status_reg(chip);
    if (retval != STATUS_SUCCESS) {
     uncorrect_flag = 1;
     dev_dbg(rtsx_dev(chip), "Uncorrectable error\n");
    } else {
     uncorrect_flag = 0;
    }

    retval = ms_transfer_tpc(chip,
        MS_TM_NORMAL_READ,
        READ_PAGE_DATA,
        0, NO_WAIT_INT);
    if (retval != STATUS_SUCCESS)
     return STATUS_FAIL;

    if (uncorrect_flag) {
     ms_set_page_status(log_blk, setPS_NG,
          extra,
          MS_EXTRA_SIZE);
     if (i == 0)
      extra[0] &= 0xEF;

     ms_write_extra_data(chip, old_blk, i,
           extra,
           MS_EXTRA_SIZE);
     dev_dbg(rtsx_dev(chip), "page %d : extra[0] = 0x%x\n",
      i, extra[0]);
     MS_SET_BAD_BLOCK_FLG(ms_card);

     ms_set_page_status(log_blk, setPS_Error,
          extra,
          MS_EXTRA_SIZE);
     ms_write_extra_data(chip, new_blk, i,
           extra,
           MS_EXTRA_SIZE);
     continue;
    }

    for (rty_cnt = 0; rty_cnt < MS_MAX_RETRY_COUNT;
         rty_cnt++) {
     retval = ms_transfer_tpc(
      chip,
      MS_TM_NORMAL_WRITE,
      WRITE_PAGE_DATA,
      0, NO_WAIT_INT);
     if (retval == STATUS_SUCCESS)
      break;
    }
    if (rty_cnt == MS_MAX_RETRY_COUNT)
     return STATUS_FAIL;
   }

   if (!(val & INT_REG_BREQ)) {
    ms_set_err_code(chip, MS_BREQ_ERROR);
    return STATUS_FAIL;
   }
  }

  retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
         SystemParm, (6 + MS_EXTRA_SIZE));

  ms_set_err_code(chip, MS_NO_ERROR);

  if (CHK_MS4BIT(ms_card))
   data[0] = 0x88;
  else
   data[0] = 0x80;

  data[1] = 0;
  data[2] = (u8)(new_blk >> 8);
  data[3] = (u8)new_blk;
  data[4] = 0x20;
  data[5] = i;

  if ((extra[0] & 0x60) != 0x60)
   data[6] = extra[0];
  else
   data[6] = 0xF8;

  data[6 + 1] = 0xFF;
  data[6 + 2] = (u8)(log_blk >> 8);
  data[6 + 3] = (u8)log_blk;

  for (j = 4; j <= MS_EXTRA_SIZE; j++)
   data[6 + j] = 0xFF;

  retval = ms_write_bytes(chip, WRITE_REG, (6 + MS_EXTRA_SIZE),
     NO_WAIT_INT, data, 16);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;

  retval = ms_send_cmd(chip, BLOCK_WRITE, WAIT_INT);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;

  ms_set_err_code(chip, MS_NO_ERROR);
  retval = ms_read_bytes(chip, GET_INT, 1, NO_WAIT_INT, &val, 1);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;

  if (val & INT_REG_CMDNK) {
   ms_set_err_code(chip, MS_CMD_NK);
   return STATUS_FAIL;
  }

  if (val & INT_REG_CED) {
   if (val & INT_REG_ERR) {
    ms_set_err_code(chip, MS_FLASH_WRITE_ERROR);
    return STATUS_FAIL;
   }
  }

  if (i == 0) {
   retval = ms_set_rw_reg_addr(chip, OverwriteFlag,
          MS_EXTRA_SIZE, SystemParm,
          7);
   if (retval != STATUS_SUCCESS)
    return STATUS_FAIL;

   ms_set_err_code(chip, MS_NO_ERROR);

   if (CHK_MS4BIT(ms_card))
    data[0] = 0x88;
   else
    data[0] = 0x80;

   data[1] = 0;
   data[2] = (u8)(old_blk >> 8);
   data[3] = (u8)old_blk;
   data[4] = 0x80;
   data[5] = 0;
   data[6] = 0xEF;
   data[7] = 0xFF;

   retval = ms_write_bytes(chip, WRITE_REG, 7,
      NO_WAIT_INT, data, 8);
   if (retval != STATUS_SUCCESS)
    return STATUS_FAIL;

   retval = ms_send_cmd(chip, BLOCK_WRITE, WAIT_INT);
   if (retval != STATUS_SUCCESS)
    return STATUS_FAIL;

   ms_set_err_code(chip, MS_NO_ERROR);
   retval = ms_read_bytes(chip, GET_INT, 1,
            NO_WAIT_INT, &val, 1);
   if (retval != STATUS_SUCCESS)
    return STATUS_FAIL;

   if (val & INT_REG_CMDNK) {
    ms_set_err_code(chip, MS_CMD_NK);
    return STATUS_FAIL;
   }

   if (val & INT_REG_CED) {
    if (val & INT_REG_ERR) {
     ms_set_err_code(chip,
       MS_FLASH_WRITE_ERROR);
     return STATUS_FAIL;
    }
   }
  }
 }

 return STATUS_SUCCESS;
}

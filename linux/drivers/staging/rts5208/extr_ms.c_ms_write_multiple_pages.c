
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ms_info {int page_off; } ;
struct rtsx_chip {int srb; int ms_timeout; struct ms_info ms_card; } ;


 int BLOCK_END ;
 int BLOCK_WRITE ;
 int CARD_DATA_SOURCE ;
 int CHECK_REG_CMD ;
 scalar_t__ CHK_MS4BIT (struct ms_info*) ;
 int DMA_512 ;
 int DMA_TO_DEVICE ;
 int ETIMEDOUT ;
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
 int MS_TM_NORMAL_WRITE ;
 int MS_TM_READ_BYTES ;
 int MS_TO_ERROR ;
 int MS_TPC ;
 int MS_TRANSFER ;
 int MS_TRANSFER_END ;
 int MS_TRANSFER_START ;
 int MS_TRANS_CFG ;
 int NO_WAIT_INT ;
 int OverwriteFlag ;
 int RING_BUFFER ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int STATUS_TIMEDOUT ;
 int SystemParm ;
 int WAIT_INT ;
 int WRITE_PAGE_DATA ;
 int WRITE_REG ;
 int WRITE_REG_CMD ;
 int detect_card_cd (struct rtsx_chip*,int ) ;
 int ms_read_bytes (struct rtsx_chip*,int ,int,int ,int*,int) ;
 int ms_send_cmd (struct rtsx_chip*,int ,int) ;
 int ms_set_err_code (struct rtsx_chip*,int ) ;
 int ms_set_rw_reg_addr (struct rtsx_chip*,int ,int,int ,int) ;
 int ms_transfer_tpc (struct rtsx_chip*,int ,int ,int,int ) ;
 int ms_write_bytes (struct rtsx_chip*,int ,int,int ,int*,int) ;
 int rtsx_add_cmd (struct rtsx_chip*,int ,int ,int,int) ;
 int rtsx_clear_ms_error (struct rtsx_chip*) ;
 int rtsx_init_cmd (struct rtsx_chip*) ;
 int rtsx_send_cmd_no_wait (struct rtsx_chip*) ;
 int rtsx_transfer_data_partial (struct rtsx_chip*,int ,int*,int,scalar_t__,unsigned int*,unsigned int*,int ,int ) ;
 scalar_t__ scsi_sg_count (int ) ;
 int trans_dma_enable (int ,struct rtsx_chip*,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static int ms_write_multiple_pages(struct rtsx_chip *chip, u16 old_blk,
       u16 new_blk, u16 log_blk, u8 start_page,
    u8 end_page, u8 *buf, unsigned int *index,
    unsigned int *offset)
{
 struct ms_info *ms_card = &chip->ms_card;
 int retval, i;
 u8 page_addr, val, data[16];
 u8 *ptr;

 if (!start_page) {
  retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
         SystemParm, 7);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;

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

  retval = ms_write_bytes(chip, WRITE_REG, 7, NO_WAIT_INT,
     data, 8);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;

  retval = ms_send_cmd(chip, BLOCK_WRITE, WAIT_INT);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;

  ms_set_err_code(chip, MS_NO_ERROR);
  retval = ms_transfer_tpc(chip, MS_TM_READ_BYTES, GET_INT, 1,
      NO_WAIT_INT);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;
 }

 retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
        SystemParm, (6 + MS_EXTRA_SIZE));
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 ms_set_err_code(chip, MS_NO_ERROR);

 if (CHK_MS4BIT(ms_card))
  data[0] = 0x88;
 else
  data[0] = 0x80;

 data[1] = 0;
 data[2] = (u8)(new_blk >> 8);
 data[3] = (u8)new_blk;
 if ((end_page - start_page) == 1)
  data[4] = 0x20;
 else
  data[4] = 0;

 data[5] = start_page;
 data[6] = 0xF8;
 data[7] = 0xFF;
 data[8] = (u8)(log_blk >> 8);
 data[9] = (u8)log_blk;

 for (i = 0x0A; i < 0x10; i++)
  data[i] = 0xFF;

 for (i = 0; i < MS_MAX_RETRY_COUNT; i++) {
  retval = ms_write_bytes(chip, WRITE_REG, 6 + MS_EXTRA_SIZE,
     NO_WAIT_INT, data, 16);
  if (retval == STATUS_SUCCESS)
   break;
 }
 if (i == MS_MAX_RETRY_COUNT)
  return STATUS_FAIL;

 for (i = 0; i < MS_MAX_RETRY_COUNT; i++) {
  retval = ms_send_cmd(chip, BLOCK_WRITE, WAIT_INT);
  if (retval == STATUS_SUCCESS)
   break;
 }
 if (i == MS_MAX_RETRY_COUNT)
  return STATUS_FAIL;

 retval = ms_read_bytes(chip, GET_INT, 1, NO_WAIT_INT, &val, 1);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 ptr = buf;
 for (page_addr = start_page; page_addr < end_page; page_addr++) {
  ms_set_err_code(chip, MS_NO_ERROR);

  if (detect_card_cd(chip, MS_CARD) != STATUS_SUCCESS) {
   ms_set_err_code(chip, MS_NO_CARD);
   return STATUS_FAIL;
  }

  if (val & INT_REG_CMDNK) {
   ms_set_err_code(chip, MS_CMD_NK);
   return STATUS_FAIL;
  }
  if (val & INT_REG_ERR) {
   ms_set_err_code(chip, MS_FLASH_WRITE_ERROR);
   return STATUS_FAIL;
  }
  if (!(val & INT_REG_BREQ)) {
   ms_set_err_code(chip, MS_BREQ_ERROR);
   return STATUS_FAIL;
  }

  udelay(30);

  rtsx_init_cmd(chip);

  rtsx_add_cmd(chip, WRITE_REG_CMD, MS_TPC,
        0xFF, WRITE_PAGE_DATA);
  rtsx_add_cmd(chip, WRITE_REG_CMD, MS_TRANS_CFG,
        0xFF, WAIT_INT);
  rtsx_add_cmd(chip, WRITE_REG_CMD, CARD_DATA_SOURCE,
        0x01, RING_BUFFER);

  trans_dma_enable(DMA_TO_DEVICE, chip, 512, DMA_512);

  rtsx_add_cmd(chip, WRITE_REG_CMD, MS_TRANSFER, 0xFF,
        MS_TRANSFER_START | MS_TM_NORMAL_WRITE);
  rtsx_add_cmd(chip, CHECK_REG_CMD, MS_TRANSFER,
        MS_TRANSFER_END, MS_TRANSFER_END);

  rtsx_send_cmd_no_wait(chip);

  retval = rtsx_transfer_data_partial(chip, MS_CARD, ptr, 512,
          scsi_sg_count(chip->srb),
          index, offset,
          DMA_TO_DEVICE,
          chip->ms_timeout);
  if (retval < 0) {
   ms_set_err_code(chip, MS_TO_ERROR);
   rtsx_clear_ms_error(chip);

   if (retval == -ETIMEDOUT)
    return STATUS_TIMEDOUT;
   return STATUS_FAIL;
  }

  retval = ms_read_bytes(chip, GET_INT, 1, NO_WAIT_INT, &val, 1);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;

  if ((end_page - start_page) == 1) {
   if (!(val & INT_REG_CED)) {
    ms_set_err_code(chip, MS_FLASH_WRITE_ERROR);
    return STATUS_FAIL;
   }
  } else {
   if (page_addr == (end_page - 1)) {
    if (!(val & INT_REG_CED)) {
     retval = ms_send_cmd(chip, BLOCK_END,
            WAIT_INT);
     if (retval != STATUS_SUCCESS)
      return STATUS_FAIL;
    }

    retval = ms_read_bytes(chip, GET_INT, 1,
             NO_WAIT_INT, &val, 1);
    if (retval != STATUS_SUCCESS)
     return STATUS_FAIL;
   }

   if ((page_addr == (end_page - 1)) ||
       (page_addr == ms_card->page_off)) {
    if (!(val & INT_REG_CED)) {
     ms_set_err_code(chip,
       MS_FLASH_WRITE_ERROR);
     return STATUS_FAIL;
    }
   }
  }

  if (scsi_sg_count(chip->srb) == 0)
   ptr += 512;
 }

 return STATUS_SUCCESS;
}

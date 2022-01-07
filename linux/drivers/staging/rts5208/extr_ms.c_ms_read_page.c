
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ms_info {int dummy; } ;
struct rtsx_chip {struct ms_info ms_card; } ;


 int BLOCK_READ ;
 scalar_t__ CHK_MS4BIT (struct ms_info*) ;
 int GET_INT ;
 int INT_REG_BREQ ;
 int INT_REG_CED ;
 int INT_REG_CMDNK ;
 int INT_REG_ERR ;
 int MS_BREQ_ERROR ;
 int MS_CMD_NK ;
 int MS_EXTRA_SIZE ;
 int MS_FLASH_READ_ERROR ;
 int MS_FLASH_WRITE_ERROR ;
 int MS_NO_ERROR ;
 int MS_TM_NORMAL_READ ;
 int NO_WAIT_INT ;
 int OverwriteFlag ;
 int READ_PAGE_DATA ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int SystemParm ;
 int WAIT_INT ;
 int WRITE_REG ;
 scalar_t__ ms_check_err_code (struct rtsx_chip*,int ) ;
 int ms_read_bytes (struct rtsx_chip*,int ,int,int ,int*,int) ;
 int ms_read_status_reg (struct rtsx_chip*) ;
 int ms_send_cmd (struct rtsx_chip*,int ,int ) ;
 int ms_set_err_code (struct rtsx_chip*,int ) ;
 int ms_set_rw_reg_addr (struct rtsx_chip*,int ,int ,int ,int) ;
 int ms_transfer_tpc (struct rtsx_chip*,int ,int ,int ,int ) ;
 int ms_write_bytes (struct rtsx_chip*,int ,int,int ,int*,int) ;

__attribute__((used)) static int ms_read_page(struct rtsx_chip *chip, u16 block_addr, u8 page_num)
{
 struct ms_info *ms_card = &chip->ms_card;
 int retval;
 u8 val, data[6];

 retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
        SystemParm, 6);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 if (CHK_MS4BIT(ms_card))
  data[0] = 0x88;
 else
  data[0] = 0x80;

 data[1] = 0;
 data[2] = (u8)(block_addr >> 8);
 data[3] = (u8)block_addr;
 data[4] = 0x20;
 data[5] = page_num;

 retval = ms_write_bytes(chip, WRITE_REG, 6, NO_WAIT_INT, data, 6);
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
   if (!(val & INT_REG_BREQ)) {
    ms_set_err_code(chip, MS_FLASH_READ_ERROR);
    return STATUS_FAIL;
   }
   retval = ms_read_status_reg(chip);
   if (retval != STATUS_SUCCESS)
    ms_set_err_code(chip, MS_FLASH_WRITE_ERROR);

  } else {
   if (!(val & INT_REG_BREQ)) {
    ms_set_err_code(chip, MS_BREQ_ERROR);
    return STATUS_FAIL;
   }
  }
 }

 retval = ms_transfer_tpc(chip, MS_TM_NORMAL_READ, READ_PAGE_DATA,
     0, NO_WAIT_INT);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 if (ms_check_err_code(chip, MS_FLASH_WRITE_ERROR))
  return STATUS_FAIL;

 return STATUS_SUCCESS;
}

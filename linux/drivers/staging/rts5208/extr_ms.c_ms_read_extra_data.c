
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
 int INT_REG_CED ;
 int INT_REG_CMDNK ;
 int INT_REG_ERR ;
 int MS_CMD_NK ;
 int MS_EXTRA_SIZE ;
 int MS_MAX_RETRY_COUNT ;
 int MS_NO_ERROR ;
 int NO_WAIT_INT ;
 int OverwriteFlag ;
 int READ_REG ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int SystemParm ;
 int WAIT_INT ;
 int WRITE_REG ;
 int memcpy (int*,int*,int) ;
 int ms_read_bytes (struct rtsx_chip*,int ,int,int ,int*,int) ;
 int ms_read_status_reg (struct rtsx_chip*) ;
 int ms_send_cmd (struct rtsx_chip*,int ,int ) ;
 int ms_set_err_code (struct rtsx_chip*,int ) ;
 int ms_set_rw_reg_addr (struct rtsx_chip*,int ,int,int ,int) ;
 int ms_write_bytes (struct rtsx_chip*,int ,int,int ,int*,int) ;

__attribute__((used)) static int ms_read_extra_data(struct rtsx_chip *chip,
         u16 block_addr, u8 page_num, u8 *buf, int buf_len)
{
 struct ms_info *ms_card = &chip->ms_card;
 int retval, i;
 u8 val, data[10];

 retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
        SystemParm, 6);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 if (CHK_MS4BIT(ms_card)) {

  data[0] = 0x88;
 } else {

  data[0] = 0x80;
 }
 data[1] = 0;
 data[2] = (u8)(block_addr >> 8);
 data[3] = (u8)block_addr;
 data[4] = 0x40;
 data[5] = page_num;

 for (i = 0; i < MS_MAX_RETRY_COUNT; i++) {
  retval = ms_write_bytes(chip, WRITE_REG, 6, NO_WAIT_INT,
     data, 6);
  if (retval == STATUS_SUCCESS)
   break;
 }
 if (i == MS_MAX_RETRY_COUNT)
  return STATUS_FAIL;

 ms_set_err_code(chip, MS_NO_ERROR);

 for (i = 0; i < MS_MAX_RETRY_COUNT; i++) {
  retval = ms_send_cmd(chip, BLOCK_READ, WAIT_INT);
  if (retval == STATUS_SUCCESS)
   break;
 }
 if (i == MS_MAX_RETRY_COUNT)
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
   if (retval != STATUS_SUCCESS)
    return STATUS_FAIL;

   retval = ms_set_rw_reg_addr(chip, OverwriteFlag,
          MS_EXTRA_SIZE, SystemParm,
          6);
   if (retval != STATUS_SUCCESS)
    return STATUS_FAIL;
  }
 }

 retval = ms_read_bytes(chip, READ_REG, MS_EXTRA_SIZE, NO_WAIT_INT,
          data, MS_EXTRA_SIZE);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 if (buf && buf_len) {
  if (buf_len > MS_EXTRA_SIZE)
   buf_len = MS_EXTRA_SIZE;
  memcpy(buf, data, buf_len);
 }

 return STATUS_SUCCESS;
}

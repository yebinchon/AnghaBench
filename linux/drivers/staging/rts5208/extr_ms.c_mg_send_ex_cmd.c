
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtsx_chip {int dummy; } ;


 int MS_MAX_RETRY_COUNT ;
 int PRO_EX_SET_CMD ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int WAIT_INT ;
 scalar_t__ check_ms_err (struct rtsx_chip*) ;
 int ms_write_bytes (struct rtsx_chip*,int ,int,int ,scalar_t__*,int) ;
 int rtsx_clear_ms_error (struct rtsx_chip*) ;

__attribute__((used)) static int mg_send_ex_cmd(struct rtsx_chip *chip, u8 cmd, u8 entry_num)
{
 int retval, i;
 u8 data[8];

 data[0] = cmd;
 data[1] = 0;
 data[2] = 0;
 data[3] = 0;
 data[4] = 0;
 data[5] = 0;
 data[6] = entry_num;
 data[7] = 0;

 for (i = 0; i < MS_MAX_RETRY_COUNT; i++) {
  retval = ms_write_bytes(chip, PRO_EX_SET_CMD, 7, WAIT_INT,
     data, 8);
  if (retval == STATUS_SUCCESS)
   break;
 }
 if (i == MS_MAX_RETRY_COUNT)
  return STATUS_FAIL;

 if (check_ms_err(chip)) {
  rtsx_clear_ms_error(chip);
  return STATUS_FAIL;
 }

 return STATUS_SUCCESS;
}

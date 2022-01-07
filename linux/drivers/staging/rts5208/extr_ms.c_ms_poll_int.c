
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_chip {int dummy; } ;


 int CHECK_REG_CMD ;
 int MS_CARD ;
 int MS_INT_CED ;
 int MS_INT_ERR ;
 int MS_TRANS_CFG ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int rtsx_add_cmd (struct rtsx_chip*,int ,int ,int ,int ) ;
 int* rtsx_get_cmd_data (struct rtsx_chip*) ;
 int rtsx_init_cmd (struct rtsx_chip*) ;
 int rtsx_send_cmd (struct rtsx_chip*,int ,int) ;

__attribute__((used)) static int ms_poll_int(struct rtsx_chip *chip)
{
 int retval;
 u8 val;

 rtsx_init_cmd(chip);

 rtsx_add_cmd(chip, CHECK_REG_CMD, MS_TRANS_CFG, MS_INT_CED, MS_INT_CED);

 retval = rtsx_send_cmd(chip, MS_CARD, 5000);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 val = *rtsx_get_cmd_data(chip);
 if (val & MS_INT_ERR)
  return STATUS_FAIL;

 return STATUS_SUCCESS;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_chip {int card_wp; } ;


 int GET_INT ;
 int INT_REG_CED ;
 int INT_REG_CMDNK ;
 int INT_REG_ERR ;
 int MS_CARD ;
 int MS_MAX_RETRY_COUNT ;
 int MS_NO_CARD ;
 int NO_WAIT_INT ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int detect_card_cd (struct rtsx_chip*,int ) ;
 int ms_read_bytes (struct rtsx_chip*,int ,int,int ,int*,int) ;
 int ms_set_err_code (struct rtsx_chip*,int ) ;
 int wait_timeout (int) ;

__attribute__((used)) static int ms_confirm_cpu_startup(struct rtsx_chip *chip)
{
 int retval, i, k;
 u8 val;


 k = 0;
 do {
  if (detect_card_cd(chip, MS_CARD) != STATUS_SUCCESS) {
   ms_set_err_code(chip, MS_NO_CARD);
   return STATUS_FAIL;
  }

  for (i = 0; i < MS_MAX_RETRY_COUNT; i++) {
   retval = ms_read_bytes(chip, GET_INT, 1,
            NO_WAIT_INT, &val, 1);
   if (retval == STATUS_SUCCESS)
    break;
  }
  if (i == MS_MAX_RETRY_COUNT)
   return STATUS_FAIL;

  if (k > 100)
   return STATUS_FAIL;

  k++;
  wait_timeout(100);
 } while (!(val & INT_REG_CED));

 for (i = 0; i < MS_MAX_RETRY_COUNT; i++) {
  retval = ms_read_bytes(chip, GET_INT, 1, NO_WAIT_INT, &val, 1);
  if (retval == STATUS_SUCCESS)
   break;
 }
 if (i == MS_MAX_RETRY_COUNT)
  return STATUS_FAIL;

 if (val & INT_REG_ERR) {
  if (val & INT_REG_CMDNK)
   chip->card_wp |= (MS_CARD);
  else
   return STATUS_FAIL;
 }


 return STATUS_SUCCESS;
}

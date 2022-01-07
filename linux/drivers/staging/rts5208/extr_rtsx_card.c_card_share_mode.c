
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_chip {int dummy; } ;


 int CARD_SHARE_48_MS ;
 int CARD_SHARE_48_SD ;
 int CARD_SHARE_48_XD ;
 int CARD_SHARE_BAROSSA_MS ;
 int CARD_SHARE_BAROSSA_SD ;
 int CARD_SHARE_BAROSSA_XD ;
 int CARD_SHARE_MASK ;
 int CARD_SHARE_MODE ;
 scalar_t__ CHECK_PID (struct rtsx_chip*,int) ;
 int MS_CARD ;
 int SD_CARD ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int XD_CARD ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;

int card_share_mode(struct rtsx_chip *chip, int card)
{
 int retval;
 u8 mask, value;

 if (CHECK_PID(chip, 0x5208)) {
  mask = CARD_SHARE_MASK;
  if (card == SD_CARD)
   value = CARD_SHARE_48_SD;
  else if (card == MS_CARD)
   value = CARD_SHARE_48_MS;
  else if (card == XD_CARD)
   value = CARD_SHARE_48_XD;
  else
   return STATUS_FAIL;

 } else if (CHECK_PID(chip, 0x5288)) {
  mask = 0x03;
  if (card == SD_CARD)
   value = CARD_SHARE_BAROSSA_SD;
  else if (card == MS_CARD)
   value = CARD_SHARE_BAROSSA_MS;
  else if (card == XD_CARD)
   value = CARD_SHARE_BAROSSA_XD;
  else
   return STATUS_FAIL;

 } else {
  return STATUS_FAIL;
 }

 retval = rtsx_write_register(chip, CARD_SHARE_MODE, mask, value);
 if (retval)
  return retval;

 return STATUS_SUCCESS;
}

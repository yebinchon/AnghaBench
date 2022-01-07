
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtsx_chip {int dummy; } ;


 int MS_CARD ;
 int MS_EXIST ;
 int RTSX_BIPR ;
 int SD_CARD ;
 int SD_EXIST ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int XD_CARD ;
 int XD_EXIST ;
 int dev_dbg (int ,char*,int) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_readl (struct rtsx_chip*,int ) ;

int detect_card_cd(struct rtsx_chip *chip, int card)
{
 u32 card_cd, status;

 if (card == SD_CARD) {
  card_cd = SD_EXIST;
 } else if (card == MS_CARD) {
  card_cd = MS_EXIST;
 } else if (card == XD_CARD) {
  card_cd = XD_EXIST;
 } else {
  dev_dbg(rtsx_dev(chip), "Wrong card type: 0x%x\n", card);
  return STATUS_FAIL;
 }

 status = rtsx_readl(chip, RTSX_BIPR);
 if (!(status & card_cd))
  return STATUS_FAIL;

 return STATUS_SUCCESS;
}

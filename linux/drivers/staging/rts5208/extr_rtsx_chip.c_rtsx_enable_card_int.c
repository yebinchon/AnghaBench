
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rtsx_chip {int max_lun; int* lun2card; scalar_t__ hw_bypass_sd; } ;


 int MS_CARD ;
 scalar_t__ MS_INT_EN ;
 int RTSX_BIER ;
 int SD_CARD ;
 scalar_t__ SD_INT_EN ;
 int XD_CARD ;
 scalar_t__ XD_INT_EN ;
 scalar_t__ rtsx_readl (struct rtsx_chip*,int ) ;
 int rtsx_writel (struct rtsx_chip*,int ,scalar_t__) ;

void rtsx_enable_card_int(struct rtsx_chip *chip)
{
 u32 reg = rtsx_readl(chip, RTSX_BIER);
 int i;

 for (i = 0; i <= chip->max_lun; i++) {
  if (chip->lun2card[i] & XD_CARD)
   reg |= XD_INT_EN;
  if (chip->lun2card[i] & SD_CARD)
   reg |= SD_INT_EN;
  if (chip->lun2card[i] & MS_CARD)
   reg |= MS_INT_EN;
 }
 if (chip->hw_bypass_sd)
  reg &= ~((u32)SD_INT_EN);

 rtsx_writel(chip, RTSX_BIER, reg);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_chip {int dummy; } ;


 int CARD_CLK_EN ;
 int MS_CARD ;
 int MS_CLK_EN ;
 int SD_CARD ;
 int SD_CLK_EN ;
 int STATUS_SUCCESS ;
 int XD_CARD ;
 int XD_CLK_EN ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int ) ;

int disable_card_clock(struct rtsx_chip *chip, u8 card)
{
 int retval;
 u8 clk_en = 0;

 if (card & XD_CARD)
  clk_en |= XD_CLK_EN;
 if (card & SD_CARD)
  clk_en |= SD_CLK_EN;
 if (card & MS_CARD)
  clk_en |= MS_CLK_EN;

 retval = rtsx_write_register(chip, CARD_CLK_EN, clk_en, 0);
 if (retval)
  return retval;

 return STATUS_SUCCESS;
}

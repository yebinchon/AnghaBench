
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_chip {int cur_clk; } ;
 int CLK_CTL ;
 int CLK_DIV ;
 int CLK_DIV_1 ;
 int CLK_DIV_2 ;
 int CLK_DIV_4 ;
 int CLK_LOW_FREQ ;
 int CLK_SEL ;
 int PHASE_NOT_RESET ;
 int SD_VPCLK0_CTL ;
 int SD_VPCLK1_CTL ;
 int SSC_100 ;
 int SSC_120 ;
 int SSC_150 ;
 int SSC_200 ;
 int SSC_80 ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int dev_dbg (int ,char*,...) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;
 int udelay (int) ;

int switch_normal_clock(struct rtsx_chip *chip, int clk)
{
 int retval;
 u8 sel, div, mcu_cnt;
 int sd_vpclk_phase_reset = 0;

 if (chip->cur_clk == clk)
  return STATUS_SUCCESS;

 switch (clk) {
 case 134:
  dev_dbg(rtsx_dev(chip), "Switch clock to 20MHz\n");
  sel = SSC_80;
  div = CLK_DIV_4;
  mcu_cnt = 7;
  break;

 case 132:
  dev_dbg(rtsx_dev(chip), "Switch clock to 30MHz\n");
  sel = SSC_120;
  div = CLK_DIV_4;
  mcu_cnt = 7;
  break;

 case 131:
  dev_dbg(rtsx_dev(chip), "Switch clock to 40MHz\n");
  sel = SSC_80;
  div = CLK_DIV_2;
  mcu_cnt = 7;
  break;

 case 130:
  dev_dbg(rtsx_dev(chip), "Switch clock to 50MHz\n");
  sel = SSC_100;
  div = CLK_DIV_2;
  mcu_cnt = 6;
  break;

 case 129:
  dev_dbg(rtsx_dev(chip), "Switch clock to 60MHz\n");
  sel = SSC_120;
  div = CLK_DIV_2;
  mcu_cnt = 6;
  break;

 case 128:
  dev_dbg(rtsx_dev(chip), "Switch clock to 80MHz\n");
  sel = SSC_80;
  div = CLK_DIV_1;
  mcu_cnt = 5;
  break;

 case 137:
  dev_dbg(rtsx_dev(chip), "Switch clock to 100MHz\n");
  sel = SSC_100;
  div = CLK_DIV_1;
  mcu_cnt = 5;
  break;

 case 136:
  dev_dbg(rtsx_dev(chip), "Switch clock to 120MHz\n");
  sel = SSC_120;
  div = CLK_DIV_1;
  mcu_cnt = 5;
  break;

 case 135:
  dev_dbg(rtsx_dev(chip), "Switch clock to 150MHz\n");
  sel = SSC_150;
  div = CLK_DIV_1;
  mcu_cnt = 4;
  break;

 case 133:
  dev_dbg(rtsx_dev(chip), "Switch clock to 200MHz\n");
  sel = SSC_200;
  div = CLK_DIV_1;
  mcu_cnt = 4;
  break;

 default:
  dev_dbg(rtsx_dev(chip), "Try to switch to an illegal clock (%d)\n",
   clk);
  return STATUS_FAIL;
 }

 retval = rtsx_write_register(chip, CLK_CTL, 0xFF, CLK_LOW_FREQ);
 if (retval)
  return retval;
 if (sd_vpclk_phase_reset) {
  retval = rtsx_write_register(chip, SD_VPCLK0_CTL,
          PHASE_NOT_RESET, 0);
  if (retval)
   return retval;
  retval = rtsx_write_register(chip, SD_VPCLK1_CTL,
          PHASE_NOT_RESET, 0);
  if (retval)
   return retval;
 }
 retval = rtsx_write_register(chip, CLK_DIV, 0xFF,
         (div << 4) | mcu_cnt);
 if (retval)
  return retval;
 retval = rtsx_write_register(chip, CLK_SEL, 0xFF, sel);
 if (retval)
  return retval;

 if (sd_vpclk_phase_reset) {
  udelay(200);
  retval = rtsx_write_register(chip, SD_VPCLK0_CTL,
          PHASE_NOT_RESET, PHASE_NOT_RESET);
  if (retval)
   return retval;
  retval = rtsx_write_register(chip, SD_VPCLK1_CTL,
          PHASE_NOT_RESET, PHASE_NOT_RESET);
  if (retval)
   return retval;
  udelay(200);
 }
 retval = rtsx_write_register(chip, CLK_CTL, 0xFF, 0);
 if (retval)
  return retval;

 chip->cur_clk = clk;

 return STATUS_SUCCESS;
}

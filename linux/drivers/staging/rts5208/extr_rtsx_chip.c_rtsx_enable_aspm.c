
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtsx_chip {int aspm_l0s_l1_en; int aspm_enabled; int* aspm_level; scalar_t__ asic_code; scalar_t__ dynamic_aspm; } ;


 int ASPM_FORCE_CTL ;
 scalar_t__ CHECK_PID (struct rtsx_chip*,int) ;
 scalar_t__ CHK_SDIO_EXIST (struct rtsx_chip*) ;
 int LCTLR ;
 int dev_dbg (int ,char*) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_write_cfg_dw (struct rtsx_chip*,int,int,int,int) ;
 int rtsx_write_config_byte (struct rtsx_chip*,int ,int) ;
 int rtsx_write_phy_register (struct rtsx_chip*,int,int ) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;

void rtsx_enable_aspm(struct rtsx_chip *chip)
{
 if (chip->aspm_l0s_l1_en && chip->dynamic_aspm && !chip->aspm_enabled) {
  dev_dbg(rtsx_dev(chip), "Try to enable ASPM\n");
  chip->aspm_enabled = 1;

  if (chip->asic_code && CHECK_PID(chip, 0x5208))
   rtsx_write_phy_register(chip, 0x07, 0);
  if (CHECK_PID(chip, 0x5208)) {
   rtsx_write_register(chip, ASPM_FORCE_CTL, 0xF3,
         0x30 | chip->aspm_level[0]);
  } else {
   rtsx_write_config_byte(chip, LCTLR,
            chip->aspm_l0s_l1_en);
  }

  if (CHK_SDIO_EXIST(chip)) {
   u16 val = chip->aspm_l0s_l1_en | 0x0100;

   rtsx_write_cfg_dw(chip, CHECK_PID(chip, 0x5288) ? 2 : 1,
       0xC0, 0xFFF, val);
  }
 }
}

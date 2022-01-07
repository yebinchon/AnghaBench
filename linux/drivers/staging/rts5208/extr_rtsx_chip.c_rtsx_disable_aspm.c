
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {scalar_t__ asic_code; scalar_t__ aspm_enabled; scalar_t__ dynamic_aspm; scalar_t__ aspm_l0s_l1_en; } ;


 int ASPM_FORCE_CTL ;
 scalar_t__ CHECK_PID (struct rtsx_chip*,int) ;
 int LCTLR ;
 int dev_dbg (int ,char*) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_monitor_aspm_config (struct rtsx_chip*) ;
 int rtsx_write_config_byte (struct rtsx_chip*,int ,int) ;
 int rtsx_write_phy_register (struct rtsx_chip*,int,int) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;
 int wait_timeout (int) ;

void rtsx_disable_aspm(struct rtsx_chip *chip)
{
 if (CHECK_PID(chip, 0x5208))
  rtsx_monitor_aspm_config(chip);

 if (chip->aspm_l0s_l1_en && chip->dynamic_aspm && chip->aspm_enabled) {
  dev_dbg(rtsx_dev(chip), "Try to disable ASPM\n");
  chip->aspm_enabled = 0;

  if (chip->asic_code && CHECK_PID(chip, 0x5208))
   rtsx_write_phy_register(chip, 0x07, 0x0129);
  if (CHECK_PID(chip, 0x5208))
   rtsx_write_register(chip, ASPM_FORCE_CTL,
         0xF3, 0x30);
  else
   rtsx_write_config_byte(chip, LCTLR, 0x00);

  wait_timeout(1);
 }
}

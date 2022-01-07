
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_chip {int sdio_aspm; int* aspm_level; scalar_t__ sd_io; int dynamic_aspm; int aspm_l0s_l1_en; } ;


 int ASPM_FORCE_CTL ;
 int CHECK_PID (struct rtsx_chip*,int) ;
 int CHK_SDIO_EXIST (struct rtsx_chip*) ;
 scalar_t__ CHK_SDIO_IGNORED (struct rtsx_chip*) ;
 int dev_dbg (int ,char*) ;
 int dynamic_configure_sdio_aspm (struct rtsx_chip*) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_monitor_aspm_config (struct rtsx_chip*) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;

__attribute__((used)) static void rtsx_manage_aspm(struct rtsx_chip *chip)
{
 u8 data;

 if (!CHECK_PID(chip, 0x5208))
  return;

 rtsx_monitor_aspm_config(chip);
}

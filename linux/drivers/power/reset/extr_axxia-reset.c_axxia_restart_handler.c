
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int EFUSE_READ_DONE ;
 int NOTIFY_DONE ;
 int RSTCTL_RST_CHIP ;
 int SC_CRIT_WRITE_KEY ;
 int SC_EFUSE_INT_STATUS ;
 int SC_LATCH_ON_RESET ;
 int SC_RESET_CONTROL ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;
 int syscon ;

__attribute__((used)) static int axxia_restart_handler(struct notifier_block *this,
     unsigned long mode, void *cmd)
{

 regmap_write(syscon, SC_CRIT_WRITE_KEY, 0xab);

 regmap_write(syscon, SC_LATCH_ON_RESET, 0x00000040);

 regmap_write(syscon, SC_EFUSE_INT_STATUS, EFUSE_READ_DONE);

 regmap_update_bits(syscon, SC_RESET_CONTROL,
      RSTCTL_RST_CHIP, RSTCTL_RST_CHIP);

 return NOTIFY_DONE;
}

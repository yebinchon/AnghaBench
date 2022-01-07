
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int name; } ;
struct bcm2835_power_domain {int clk; TYPE_1__ base; struct bcm2835_power* power; } ;
struct bcm2835_power {int dev; } ;


 int PM_READ (int) ;
 int PM_WRITE (int,int) ;
 int bcm2835_asb_disable (struct bcm2835_power*,int) ;
 int bcm2835_asb_enable (struct bcm2835_power*,int) ;
 int clk_disable_unprepare (int ) ;
 int dev_warn (int ,char*,int ) ;

__attribute__((used)) static int bcm2835_asb_power_off(struct bcm2835_power_domain *pd,
     u32 pm_reg,
     u32 asb_m_reg,
     u32 asb_s_reg,
     u32 reset_flags)
{
 struct bcm2835_power *power = pd->power;
 int ret;

 ret = bcm2835_asb_disable(power, asb_s_reg);
 if (ret) {
  dev_warn(power->dev, "Failed to disable ASB slave for %s\n",
    pd->base.name);
  return ret;
 }
 ret = bcm2835_asb_disable(power, asb_m_reg);
 if (ret) {
  dev_warn(power->dev, "Failed to disable ASB master for %s\n",
    pd->base.name);
  bcm2835_asb_enable(power, asb_s_reg);
  return ret;
 }

 clk_disable_unprepare(pd->clk);


 PM_WRITE(pm_reg, PM_READ(pm_reg) & ~reset_flags);

 return 0;
}

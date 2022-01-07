
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
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int bcm2835_asb_power_on(struct bcm2835_power_domain *pd,
    u32 pm_reg,
    u32 asb_m_reg,
    u32 asb_s_reg,
    u32 reset_flags)
{
 struct bcm2835_power *power = pd->power;
 int ret;

 ret = clk_prepare_enable(pd->clk);
 if (ret) {
  dev_err(power->dev, "Failed to enable clock for %s\n",
   pd->base.name);
  return ret;
 }


 udelay(1);

 clk_disable_unprepare(pd->clk);


 PM_WRITE(pm_reg, PM_READ(pm_reg) | reset_flags);

 ret = clk_prepare_enable(pd->clk);
 if (ret) {
  dev_err(power->dev, "Failed to enable clock for %s\n",
   pd->base.name);
  goto err_enable_resets;
 }

 ret = bcm2835_asb_enable(power, asb_m_reg);
 if (ret) {
  dev_err(power->dev, "Failed to enable ASB master for %s\n",
   pd->base.name);
  goto err_disable_clk;
 }
 ret = bcm2835_asb_enable(power, asb_s_reg);
 if (ret) {
  dev_err(power->dev, "Failed to enable ASB slave for %s\n",
   pd->base.name);
  goto err_disable_asb_master;
 }

 return 0;

err_disable_asb_master:
 bcm2835_asb_disable(power, asb_m_reg);
err_disable_clk:
 clk_disable_unprepare(pd->clk);
err_enable_resets:
 PM_WRITE(pm_reg, PM_READ(pm_reg) & ~reset_flags);
 return ret;
}

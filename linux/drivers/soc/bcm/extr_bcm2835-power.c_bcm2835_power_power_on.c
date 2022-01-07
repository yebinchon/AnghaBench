
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct device {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct bcm2835_power_domain {TYPE_1__ base; struct bcm2835_power* power; } ;
struct bcm2835_power {struct device* dev; } ;


 int ETIMEDOUT ;
 int PM_INRUSH_20_MA ;
 int PM_INRUSH_3_5_MA ;
 int PM_INRUSH_MASK ;
 int PM_INRUSH_SHIFT ;
 int PM_ISFUNC ;
 int PM_ISPOW ;
 int PM_MEMREP ;
 int PM_MRDONE ;
 int PM_POWOK ;
 int PM_POWUP ;
 int PM_READ (int ) ;
 int PM_WRITE (int ,int) ;
 int cpu_relax () ;
 int dev_err (struct device*,char*,int ) ;
 int ktime_get_ns () ;

__attribute__((used)) static int bcm2835_power_power_on(struct bcm2835_power_domain *pd, u32 pm_reg)
{
 struct bcm2835_power *power = pd->power;
 struct device *dev = power->dev;
 u64 start;
 int ret;
 int inrush;
 bool powok;


 if (PM_READ(pm_reg) & PM_POWUP)
  return 0;





 powok = 0;
 for (inrush = PM_INRUSH_3_5_MA; inrush <= PM_INRUSH_20_MA; inrush++) {
  PM_WRITE(pm_reg,
    (PM_READ(pm_reg) & ~PM_INRUSH_MASK) |
    (inrush << PM_INRUSH_SHIFT) |
    PM_POWUP);

  start = ktime_get_ns();
  while (!(powok = !!(PM_READ(pm_reg) & PM_POWOK))) {
   cpu_relax();
   if (ktime_get_ns() - start >= 3000)
    break;
  }
 }
 if (!powok) {
  dev_err(dev, "Timeout waiting for %s power OK\n",
   pd->base.name);
  ret = -ETIMEDOUT;
  goto err_disable_powup;
 }


 PM_WRITE(pm_reg, PM_READ(pm_reg) | PM_ISPOW);


 PM_WRITE(pm_reg, PM_READ(pm_reg) | PM_MEMREP);
 start = ktime_get_ns();
 while (!(PM_READ(pm_reg) & PM_MRDONE)) {
  cpu_relax();
  if (ktime_get_ns() - start >= 1000) {
   dev_err(dev, "Timeout waiting for %s memory repair\n",
    pd->base.name);
   ret = -ETIMEDOUT;
   goto err_disable_ispow;
  }
 }


 PM_WRITE(pm_reg, PM_READ(pm_reg) | PM_ISFUNC);

 return 0;

err_disable_ispow:
 PM_WRITE(pm_reg, PM_READ(pm_reg) & ~PM_ISPOW);
err_disable_powup:
 PM_WRITE(pm_reg, PM_READ(pm_reg) & ~(PM_POWUP | PM_INRUSH_MASK));
 return ret;
}

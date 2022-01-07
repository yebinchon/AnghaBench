
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm2835_power_domain {struct bcm2835_power* power; } ;
struct bcm2835_power {int dummy; } ;


 int PM_ISFUNC ;
 int PM_ISPOW ;
 int PM_POWUP ;
 int PM_READ (int ) ;
 int PM_WRITE (int ,int) ;

__attribute__((used)) static int bcm2835_power_power_off(struct bcm2835_power_domain *pd, u32 pm_reg)
{
 struct bcm2835_power *power = pd->power;


 PM_WRITE(pm_reg, PM_READ(pm_reg) & ~PM_ISFUNC);


 PM_WRITE(pm_reg, PM_READ(pm_reg) & ~PM_ISPOW);


 PM_WRITE(pm_reg, PM_READ(pm_reg) & ~PM_POWUP);

 return 0;
}

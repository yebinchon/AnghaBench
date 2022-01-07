
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int disable_work; } ;
struct regulator {int deferred_disables; struct regulator_dev* rdev; } ;


 int mod_delayed_work (int ,int *,int ) ;
 int msecs_to_jiffies (int) ;
 int regulator_disable (struct regulator*) ;
 int regulator_lock (struct regulator_dev*) ;
 int regulator_unlock (struct regulator_dev*) ;
 int system_power_efficient_wq ;

int regulator_disable_deferred(struct regulator *regulator, int ms)
{
 struct regulator_dev *rdev = regulator->rdev;

 if (!ms)
  return regulator_disable(regulator);

 regulator_lock(rdev);
 regulator->deferred_disables++;
 mod_delayed_work(system_power_efficient_wq, &rdev->disable_work,
    msecs_to_jiffies(ms));
 regulator_unlock(rdev);

 return 0;
}

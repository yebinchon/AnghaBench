
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy {int power_count; scalar_t__ pwr; int mutex; int dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* power_off ) (struct phy*) ;} ;


 int dev_err (int *,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phy_pm_runtime_put (struct phy*) ;
 int regulator_disable (scalar_t__) ;
 int stub1 (struct phy*) ;

int phy_power_off(struct phy *phy)
{
 int ret;

 if (!phy)
  return 0;

 mutex_lock(&phy->mutex);
 if (phy->power_count == 1 && phy->ops->power_off) {
  ret = phy->ops->power_off(phy);
  if (ret < 0) {
   dev_err(&phy->dev, "phy poweroff failed --> %d\n", ret);
   mutex_unlock(&phy->mutex);
   return ret;
  }
 }
 --phy->power_count;
 mutex_unlock(&phy->mutex);
 phy_pm_runtime_put(phy);

 if (phy->pwr)
  regulator_disable(phy->pwr);

 return 0;
}

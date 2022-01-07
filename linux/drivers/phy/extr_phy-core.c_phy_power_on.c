
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy {scalar_t__ power_count; scalar_t__ pwr; int mutex; int dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* power_on ) (struct phy*) ;} ;


 int ENOTSUPP ;
 int dev_err (int *,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phy_pm_runtime_get_sync (struct phy*) ;
 int phy_pm_runtime_put_sync (struct phy*) ;
 int regulator_disable (scalar_t__) ;
 int regulator_enable (scalar_t__) ;
 int stub1 (struct phy*) ;

int phy_power_on(struct phy *phy)
{
 int ret = 0;

 if (!phy)
  goto out;

 if (phy->pwr) {
  ret = regulator_enable(phy->pwr);
  if (ret)
   goto out;
 }

 ret = phy_pm_runtime_get_sync(phy);
 if (ret < 0 && ret != -ENOTSUPP)
  goto err_pm_sync;

 ret = 0;

 mutex_lock(&phy->mutex);
 if (phy->power_count == 0 && phy->ops->power_on) {
  ret = phy->ops->power_on(phy);
  if (ret < 0) {
   dev_err(&phy->dev, "phy poweron failed --> %d\n", ret);
   goto err_pwr_on;
  }
 }
 ++phy->power_count;
 mutex_unlock(&phy->mutex);
 return 0;

err_pwr_on:
 mutex_unlock(&phy->mutex);
 phy_pm_runtime_put_sync(phy);
err_pm_sync:
 if (phy->pwr)
  regulator_disable(phy->pwr);
out:
 return ret;
}

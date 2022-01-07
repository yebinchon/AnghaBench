
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy {int init_count; int mutex; int dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* exit ) (struct phy*) ;} ;


 int ENOTSUPP ;
 int dev_err (int *,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phy_pm_runtime_get_sync (struct phy*) ;
 int phy_pm_runtime_put (struct phy*) ;
 int stub1 (struct phy*) ;

int phy_exit(struct phy *phy)
{
 int ret;

 if (!phy)
  return 0;

 ret = phy_pm_runtime_get_sync(phy);
 if (ret < 0 && ret != -ENOTSUPP)
  return ret;
 ret = 0;

 mutex_lock(&phy->mutex);
 if (phy->init_count == 1 && phy->ops->exit) {
  ret = phy->ops->exit(phy);
  if (ret < 0) {
   dev_err(&phy->dev, "phy exit failed --> %d\n", ret);
   goto out;
  }
 }
 --phy->init_count;

out:
 mutex_unlock(&phy->mutex);
 phy_pm_runtime_put(phy);
 return ret;
}

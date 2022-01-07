
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy {int mutex; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* reset ) (struct phy*) ;} ;


 int ENOTSUPP ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phy_pm_runtime_get_sync (struct phy*) ;
 int phy_pm_runtime_put (struct phy*) ;
 int stub1 (struct phy*) ;

int phy_reset(struct phy *phy)
{
 int ret;

 if (!phy || !phy->ops->reset)
  return 0;

 ret = phy_pm_runtime_get_sync(phy);
 if (ret < 0 && ret != -ENOTSUPP)
  return ret;

 mutex_lock(&phy->mutex);
 ret = phy->ops->reset(phy);
 mutex_unlock(&phy->mutex);

 phy_pm_runtime_put(phy);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dev; } ;


 int ENOTSUPP ;
 int pm_runtime_enabled (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync (int *) ;

int phy_pm_runtime_get_sync(struct phy *phy)
{
 int ret;

 if (!phy)
  return 0;

 if (!pm_runtime_enabled(&phy->dev))
  return -ENOTSUPP;

 ret = pm_runtime_get_sync(&phy->dev);
 if (ret < 0)
  pm_runtime_put_sync(&phy->dev);

 return ret;
}

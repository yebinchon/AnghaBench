
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dev; } ;


 int pm_runtime_allow (int *) ;
 int pm_runtime_enabled (int *) ;

void phy_pm_runtime_allow(struct phy *phy)
{
 if (!phy)
  return;

 if (!pm_runtime_enabled(&phy->dev))
  return;

 pm_runtime_allow(&phy->dev);
}

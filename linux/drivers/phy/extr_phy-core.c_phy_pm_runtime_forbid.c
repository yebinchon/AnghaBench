
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dev; } ;


 int pm_runtime_enabled (int *) ;
 int pm_runtime_forbid (int *) ;

void phy_pm_runtime_forbid(struct phy *phy)
{
 if (!phy)
  return;

 if (!pm_runtime_enabled(&phy->dev))
  return;

 pm_runtime_forbid(&phy->dev);
}

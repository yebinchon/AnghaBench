
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dev; } ;


 int device_unregister (int *) ;
 int pm_runtime_disable (int *) ;

void phy_destroy(struct phy *phy)
{
 pm_runtime_disable(&phy->dev);
 device_unregister(&phy->dev);
}

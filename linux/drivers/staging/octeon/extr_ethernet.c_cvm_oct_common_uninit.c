
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ phydev; } ;


 int phy_disconnect (scalar_t__) ;

void cvm_oct_common_uninit(struct net_device *dev)
{
 if (dev->phydev)
  phy_disconnect(dev->phydev);
}

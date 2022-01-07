
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct phy_device {TYPE_1__ mdio; } ;
struct device_node {int dummy; } ;


 int fixed_phy_unregister (struct phy_device*) ;
 struct phy_device* of_phy_find_device (struct device_node*) ;
 int phy_device_free (struct phy_device*) ;
 int put_device (int *) ;

void of_phy_deregister_fixed_link(struct device_node *np)
{
 struct phy_device *phydev;

 phydev = of_phy_find_device(np);
 if (!phydev)
  return;

 fixed_phy_unregister(phydev);

 put_device(&phydev->mdio.dev);
 phy_device_free(phydev);
}

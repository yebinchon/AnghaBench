
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct mdio_device {int flags; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int MDIO_DEVICE_FLAG_PHY ;
 struct device* bus_find_device_by_of_node (int *,struct device_node*) ;
 int mdio_bus_type ;
 int put_device (struct device*) ;
 struct mdio_device* to_mdio_device (struct device*) ;
 struct phy_device* to_phy_device (struct device*) ;

struct phy_device *of_phy_find_device(struct device_node *phy_np)
{
 struct device *d;
 struct mdio_device *mdiodev;

 if (!phy_np)
  return ((void*)0);

 d = bus_find_device_by_of_node(&mdio_bus_type, phy_np);
 if (d) {
  mdiodev = to_mdio_device(d);
  if (mdiodev->flags & MDIO_DEVICE_FLAG_PHY)
   return to_phy_device(d);
  put_device(d);
 }

 return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct phy_device {TYPE_1__ mdio; int dev_flags; } ;
struct net_device {int dummy; } ;
struct device_node {int dummy; } ;
typedef int phy_interface_t ;


 struct phy_device* of_phy_find_device (struct device_node*) ;
 int phy_connect_direct (struct net_device*,struct phy_device*,void (*) (struct net_device*),int ) ;
 int put_device (int *) ;

struct phy_device *of_phy_connect(struct net_device *dev,
      struct device_node *phy_np,
      void (*hndlr)(struct net_device *), u32 flags,
      phy_interface_t iface)
{
 struct phy_device *phy = of_phy_find_device(phy_np);
 int ret;

 if (!phy)
  return ((void*)0);

 phy->dev_flags = flags;

 ret = phy_connect_direct(dev, phy, hndlr, iface);


 put_device(&phy->mdio.dev);

 return ret ? ((void*)0) : phy;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_dev {struct net_device** dev; } ;
struct net_device {int dummy; } ;


 int MAX_NIC_TYPE ;
 int free_netdev (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;

void unregister_lte_device(struct phy_dev *phy_dev)
{
 struct net_device *net;
 int index;

 for (index = 0; index < MAX_NIC_TYPE; index++) {
  net = phy_dev->dev[index];
  if (!net)
   continue;

  unregister_netdev(net);
  free_netdev(net);
 }
}

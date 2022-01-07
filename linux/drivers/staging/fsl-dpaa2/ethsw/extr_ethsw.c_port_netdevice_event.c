
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct netdev_notifier_changeupper_info {scalar_t__ linking; struct net_device* upper_dev; } ;
struct net_device {int dummy; } ;


 unsigned long NETDEV_CHANGEUPPER ;
 int NOTIFY_DONE ;
 int ethsw_port_dev_check (struct net_device*) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 scalar_t__ netif_is_bridge_master (struct net_device*) ;
 int notifier_from_errno (int) ;
 int port_bridge_join (struct net_device*,struct net_device*) ;
 int port_bridge_leave (struct net_device*) ;

__attribute__((used)) static int port_netdevice_event(struct notifier_block *unused,
    unsigned long event, void *ptr)
{
 struct net_device *netdev = netdev_notifier_info_to_dev(ptr);
 struct netdev_notifier_changeupper_info *info = ptr;
 struct net_device *upper_dev;
 int err = 0;

 if (!ethsw_port_dev_check(netdev))
  return NOTIFY_DONE;


 if (event == NETDEV_CHANGEUPPER) {
  upper_dev = info->upper_dev;
  if (netif_is_bridge_master(upper_dev)) {
   if (info->linking)
    err = port_bridge_join(netdev, upper_dev);
   else
    err = port_bridge_leave(netdev);
  }
 }

 return notifier_from_errno(err);
}

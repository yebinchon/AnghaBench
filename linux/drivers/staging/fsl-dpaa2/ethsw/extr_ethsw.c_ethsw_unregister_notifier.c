
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*,int) ;
 int port_nb ;
 struct notifier_block port_switchdev_blocking_nb ;
 int port_switchdev_nb ;
 int unregister_netdevice_notifier (int *) ;
 int unregister_switchdev_blocking_notifier (struct notifier_block*) ;
 int unregister_switchdev_notifier (int *) ;

__attribute__((used)) static void ethsw_unregister_notifier(struct device *dev)
{
 struct notifier_block *nb;
 int err;

 nb = &port_switchdev_blocking_nb;
 err = unregister_switchdev_blocking_notifier(nb);
 if (err)
  dev_err(dev,
   "Failed to unregister switchdev blocking notifier (%d)\n", err);

 err = unregister_switchdev_notifier(&port_switchdev_nb);
 if (err)
  dev_err(dev,
   "Failed to unregister switchdev notifier (%d)\n", err);

 err = unregister_netdevice_notifier(&port_nb);
 if (err)
  dev_err(dev,
   "Failed to unregister netdev notifier (%d)\n", err);
}

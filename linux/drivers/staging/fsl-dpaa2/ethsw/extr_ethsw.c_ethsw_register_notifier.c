
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_err (struct device*,char*) ;
 int port_nb ;
 int port_switchdev_blocking_nb ;
 int port_switchdev_nb ;
 int register_netdevice_notifier (int *) ;
 int register_switchdev_blocking_notifier (int *) ;
 int register_switchdev_notifier (int *) ;
 int unregister_netdevice_notifier (int *) ;
 int unregister_switchdev_notifier (int *) ;

__attribute__((used)) static int ethsw_register_notifier(struct device *dev)
{
 int err;

 err = register_netdevice_notifier(&port_nb);
 if (err) {
  dev_err(dev, "Failed to register netdev notifier\n");
  return err;
 }

 err = register_switchdev_notifier(&port_switchdev_nb);
 if (err) {
  dev_err(dev, "Failed to register switchdev notifier\n");
  goto err_switchdev_nb;
 }

 err = register_switchdev_blocking_notifier(&port_switchdev_blocking_nb);
 if (err) {
  dev_err(dev, "Failed to register switchdev blocking notifier\n");
  goto err_switchdev_blocking_nb;
 }

 return 0;

err_switchdev_blocking_nb:
 unregister_switchdev_notifier(&port_switchdev_nb);
err_switchdev_nb:
 unregister_netdevice_notifier(&port_nb);
 return err;
}

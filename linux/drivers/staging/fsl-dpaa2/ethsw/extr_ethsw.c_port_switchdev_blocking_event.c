
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;


 int NOTIFY_DONE ;



 int ethsw_port_dev_check (struct net_device*) ;
 int ethsw_switchdev_port_attr_set_event (struct net_device*,void*) ;
 int ethsw_switchdev_port_obj_event (unsigned long,struct net_device*,void*) ;
 struct net_device* switchdev_notifier_info_to_dev (void*) ;

__attribute__((used)) static int port_switchdev_blocking_event(struct notifier_block *unused,
      unsigned long event, void *ptr)
{
 struct net_device *dev = switchdev_notifier_info_to_dev(ptr);

 if (!ethsw_port_dev_check(dev))
  return NOTIFY_DONE;

 switch (event) {
 case 129:
 case 128:
  return ethsw_switchdev_port_obj_event(event, dev, ptr);
 case 130:
  return ethsw_switchdev_port_attr_set_event(dev, ptr);
 }

 return NOTIFY_DONE;
}

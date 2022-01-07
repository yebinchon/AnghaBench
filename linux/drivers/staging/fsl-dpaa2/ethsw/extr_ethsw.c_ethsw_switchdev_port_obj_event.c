
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_notifier_port_obj_info {int handled; int obj; int trans; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;


 int notifier_from_errno (int) ;
 int swdev_port_obj_add (struct net_device*,int ,int ) ;
 int swdev_port_obj_del (struct net_device*,int ) ;

__attribute__((used)) static int
ethsw_switchdev_port_obj_event(unsigned long event, struct net_device *netdev,
   struct switchdev_notifier_port_obj_info *port_obj_info)
{
 int err = -EOPNOTSUPP;

 switch (event) {
 case 129:
  err = swdev_port_obj_add(netdev, port_obj_info->obj,
      port_obj_info->trans);
  break;
 case 128:
  err = swdev_port_obj_del(netdev, port_obj_info->obj);
  break;
 }

 port_obj_info->handled = 1;
 return notifier_from_errno(err);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_notifier_port_attr_info {int handled; int trans; int attr; } ;
struct net_device {int dummy; } ;


 int notifier_from_errno (int) ;
 int swdev_port_attr_set (struct net_device*,int ,int ) ;

__attribute__((used)) static int
ethsw_switchdev_port_attr_set_event(struct net_device *netdev,
  struct switchdev_notifier_port_attr_info *port_attr_info)
{
 int err;

 err = swdev_port_attr_set(netdev, port_attr_info->attr,
      port_attr_info->trans);

 port_attr_info->handled = 1;
 return notifier_from_errno(err);
}

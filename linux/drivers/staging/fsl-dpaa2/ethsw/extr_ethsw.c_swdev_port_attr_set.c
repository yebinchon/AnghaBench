
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switchdev_trans {int dummy; } ;
struct TYPE_2__ {int brport_flags; int stp_state; } ;
struct switchdev_attr {int id; TYPE_1__ u; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;




 int port_attr_br_flags_pre_set (struct net_device*,struct switchdev_trans*,int ) ;
 int port_attr_br_flags_set (struct net_device*,struct switchdev_trans*,int ) ;
 int port_attr_stp_state_set (struct net_device*,struct switchdev_trans*,int ) ;

__attribute__((used)) static int swdev_port_attr_set(struct net_device *netdev,
          const struct switchdev_attr *attr,
          struct switchdev_trans *trans)
{
 int err = 0;

 switch (attr->id) {
 case 128:
  err = port_attr_stp_state_set(netdev, trans,
           attr->u.stp_state);
  break;
 case 129:
  err = port_attr_br_flags_pre_set(netdev, trans,
       attr->u.brport_flags);
  break;
 case 130:
  err = port_attr_br_flags_set(netdev, trans,
          attr->u.brport_flags);
  break;
 case 131:

  break;
 default:
  err = -EOPNOTSUPP;
  break;
 }

 return err;
}

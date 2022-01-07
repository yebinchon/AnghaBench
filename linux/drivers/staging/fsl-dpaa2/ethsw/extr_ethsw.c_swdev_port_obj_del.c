
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_obj {int id; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;


 int SWITCHDEV_OBJ_PORT_MDB (struct switchdev_obj const*) ;
 int SWITCHDEV_OBJ_PORT_VLAN (struct switchdev_obj const*) ;
 int port_mdb_del (struct net_device*,int ) ;
 int port_vlans_del (struct net_device*,int ) ;

__attribute__((used)) static int swdev_port_obj_del(struct net_device *netdev,
         const struct switchdev_obj *obj)
{
 int err;

 switch (obj->id) {
 case 128:
  err = port_vlans_del(netdev, SWITCHDEV_OBJ_PORT_VLAN(obj));
  break;
 case 129:
  err = port_mdb_del(netdev, SWITCHDEV_OBJ_PORT_MDB(obj));
  break;
 default:
  err = -EOPNOTSUPP;
  break;
 }
 return err;
}

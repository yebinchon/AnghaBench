
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_trans {int dummy; } ;
struct switchdev_obj {int id; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;


 int SWITCHDEV_OBJ_PORT_MDB (struct switchdev_obj const*) ;
 int SWITCHDEV_OBJ_PORT_VLAN (struct switchdev_obj const*) ;
 int port_mdb_add (struct net_device*,int ,struct switchdev_trans*) ;
 int port_vlans_add (struct net_device*,int ,struct switchdev_trans*) ;

__attribute__((used)) static int swdev_port_obj_add(struct net_device *netdev,
         const struct switchdev_obj *obj,
         struct switchdev_trans *trans)
{
 int err;

 switch (obj->id) {
 case 128:
  err = port_vlans_add(netdev,
         SWITCHDEV_OBJ_PORT_VLAN(obj),
         trans);
  break;
 case 129:
  err = port_mdb_add(netdev,
       SWITCHDEV_OBJ_PORT_MDB(obj),
       trans);
  break;
 default:
  err = -EOPNOTSUPP;
  break;
 }

 return err;
}

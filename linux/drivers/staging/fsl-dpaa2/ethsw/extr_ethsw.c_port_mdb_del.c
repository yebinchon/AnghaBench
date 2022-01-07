
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_obj_port_mdb {int addr; } ;
struct net_device {int dummy; } ;
struct ethsw_port_priv {int dummy; } ;


 int ENOENT ;
 int dev_mc_del (struct net_device*,int ) ;
 int ethsw_port_fdb_del_mc (struct ethsw_port_priv*,int ) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct ethsw_port_priv* netdev_priv (struct net_device*) ;
 int port_lookup_address (struct net_device*,int ,int ) ;

__attribute__((used)) static int port_mdb_del(struct net_device *netdev,
   const struct switchdev_obj_port_mdb *mdb)
{
 struct ethsw_port_priv *port_priv = netdev_priv(netdev);
 int err;

 if (!port_lookup_address(netdev, 0, mdb->addr))
  return -ENOENT;

 err = ethsw_port_fdb_del_mc(port_priv, mdb->addr);
 if (err)
  return err;

 err = dev_mc_del(netdev, mdb->addr);
 if (err) {
  netdev_err(netdev, "dev_mc_del err %d\n", err);
  return err;
 }

 return err;
}

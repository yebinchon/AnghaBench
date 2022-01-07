
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_trans {int dummy; } ;
struct switchdev_obj_port_mdb {int addr; } ;
struct net_device {int dummy; } ;
struct ethsw_port_priv {int dummy; } ;


 int EEXIST ;
 int dev_mc_add (struct net_device*,int ) ;
 int ethsw_port_fdb_add_mc (struct ethsw_port_priv*,int ) ;
 int ethsw_port_fdb_del_mc (struct ethsw_port_priv*,int ) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct ethsw_port_priv* netdev_priv (struct net_device*) ;
 scalar_t__ port_lookup_address (struct net_device*,int ,int ) ;
 scalar_t__ switchdev_trans_ph_prepare (struct switchdev_trans*) ;

__attribute__((used)) static int port_mdb_add(struct net_device *netdev,
   const struct switchdev_obj_port_mdb *mdb,
   struct switchdev_trans *trans)
{
 struct ethsw_port_priv *port_priv = netdev_priv(netdev);
 int err;

 if (switchdev_trans_ph_prepare(trans))
  return 0;


 if (port_lookup_address(netdev, 0, mdb->addr))
  return -EEXIST;

 err = ethsw_port_fdb_add_mc(port_priv, mdb->addr);
 if (err)
  return err;

 err = dev_mc_add(netdev, mdb->addr);
 if (err) {
  netdev_err(netdev, "dev_mc_add err %d\n", err);
  ethsw_port_fdb_del_mc(port_priv, mdb->addr);
 }

 return err;
}

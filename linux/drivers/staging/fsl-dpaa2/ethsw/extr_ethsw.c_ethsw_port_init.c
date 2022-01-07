
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct ethsw_port_priv {int idx; struct ethsw_core* ethsw_data; struct net_device* netdev; } ;
struct ethsw_core {int dpsw_handle; int mc_io; } ;
struct dpsw_vlan_if_cfg {int num_ifs; int * if_id; } ;


 int DEFAULT_VLAN_ID ;
 int dpsw_vlan_remove_if (int ,int ,int ,int ,struct dpsw_vlan_if_cfg*) ;
 int dpsw_vlan_remove_if_untagged (int ,int ,int ,int ,struct dpsw_vlan_if_cfg*) ;
 int ethsw_port_set_pvid (struct ethsw_port_priv*,int ) ;
 int netdev_err (struct net_device*,char*,int) ;

__attribute__((used)) static int ethsw_port_init(struct ethsw_port_priv *port_priv, u16 port)
{
 struct net_device *netdev = port_priv->netdev;
 struct ethsw_core *ethsw = port_priv->ethsw_data;
 struct dpsw_vlan_if_cfg vcfg;
 int err;




 vcfg.num_ifs = 1;
 vcfg.if_id[0] = port_priv->idx;

 err = dpsw_vlan_remove_if_untagged(ethsw->mc_io, 0, ethsw->dpsw_handle,
        DEFAULT_VLAN_ID, &vcfg);
 if (err) {
  netdev_err(netdev, "dpsw_vlan_remove_if_untagged err %d\n",
      err);
  return err;
 }

 err = ethsw_port_set_pvid(port_priv, 0);
 if (err)
  return err;

 err = dpsw_vlan_remove_if(ethsw->mc_io, 0, ethsw->dpsw_handle,
      DEFAULT_VLAN_ID, &vcfg);
 if (err)
  netdev_err(netdev, "dpsw_vlan_remove_if err %d\n", err);

 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct net_device {int dummy; } ;
struct ethsw_port_priv {int* vlans; int idx; struct net_device* netdev; struct ethsw_core* ethsw_data; } ;
struct TYPE_3__ {int num_ifs; } ;
struct ethsw_core {int * vlans; TYPE_2__** ports; TYPE_1__ sw_attr; int dpsw_handle; int mc_io; } ;
struct dpsw_vlan_if_cfg {int num_ifs; int * if_id; } ;
struct TYPE_4__ {int* vlans; } ;


 int ENOENT ;
 int ETHSW_VLAN_GLOBAL ;
 int ETHSW_VLAN_MEMBER ;
 int ETHSW_VLAN_PVID ;
 int ETHSW_VLAN_UNTAGGED ;
 int dpsw_vlan_remove_if (int ,int ,int ,size_t,struct dpsw_vlan_if_cfg*) ;
 int dpsw_vlan_remove_if_untagged (int ,int ,int ,size_t,struct dpsw_vlan_if_cfg*) ;
 int ethsw_dellink_switch (struct ethsw_core*,size_t) ;
 int ethsw_port_set_pvid (struct ethsw_port_priv*,int ) ;
 int netdev_err (struct net_device*,char*,int) ;

__attribute__((used)) static int ethsw_port_del_vlan(struct ethsw_port_priv *port_priv, u16 vid)
{
 struct ethsw_core *ethsw = port_priv->ethsw_data;
 struct net_device *netdev = port_priv->netdev;
 struct dpsw_vlan_if_cfg vcfg;
 int i, err;

 if (!port_priv->vlans[vid])
  return -ENOENT;

 if (port_priv->vlans[vid] & ETHSW_VLAN_PVID) {
  err = ethsw_port_set_pvid(port_priv, 0);
  if (err)
   return err;
 }

 vcfg.num_ifs = 1;
 vcfg.if_id[0] = port_priv->idx;
 if (port_priv->vlans[vid] & ETHSW_VLAN_UNTAGGED) {
  err = dpsw_vlan_remove_if_untagged(ethsw->mc_io, 0,
         ethsw->dpsw_handle,
         vid, &vcfg);
  if (err) {
   netdev_err(netdev,
       "dpsw_vlan_remove_if_untagged err %d\n",
       err);
  }
  port_priv->vlans[vid] &= ~ETHSW_VLAN_UNTAGGED;
 }

 if (port_priv->vlans[vid] & ETHSW_VLAN_MEMBER) {
  err = dpsw_vlan_remove_if(ethsw->mc_io, 0, ethsw->dpsw_handle,
       vid, &vcfg);
  if (err) {
   netdev_err(netdev,
       "dpsw_vlan_remove_if err %d\n", err);
   return err;
  }
  port_priv->vlans[vid] &= ~ETHSW_VLAN_MEMBER;




  for (i = 0; i < ethsw->sw_attr.num_ifs; i++)
   if (ethsw->ports[i]->vlans[vid] & ETHSW_VLAN_MEMBER)
    return 0;

  ethsw->vlans[vid] &= ~ETHSW_VLAN_GLOBAL;

  err = ethsw_dellink_switch(ethsw, vid);
  if (err)
   return err;
 }

 return 0;
}

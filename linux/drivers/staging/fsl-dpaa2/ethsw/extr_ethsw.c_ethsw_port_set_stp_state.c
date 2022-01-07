
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ethsw_port_priv {scalar_t__ stp_state; int netdev; int idx; TYPE_1__* ethsw_data; } ;
struct dpsw_stp_cfg {scalar_t__ state; int vlan_id; } ;
struct TYPE_2__ {int dpsw_handle; int mc_io; } ;


 int DEFAULT_VLAN_ID ;
 int dpsw_if_set_stp (int ,int ,int ,int ,struct dpsw_stp_cfg*) ;
 int netdev_err (int ,char*,int) ;
 int netif_oper_up (int ) ;

__attribute__((used)) static int ethsw_port_set_stp_state(struct ethsw_port_priv *port_priv, u8 state)
{
 struct dpsw_stp_cfg stp_cfg = {
  .vlan_id = DEFAULT_VLAN_ID,
  .state = state,
 };
 int err;

 if (!netif_oper_up(port_priv->netdev) || state == port_priv->stp_state)
  return 0;

 err = dpsw_if_set_stp(port_priv->ethsw_data->mc_io, 0,
         port_priv->ethsw_data->dpsw_handle,
         port_priv->idx, &stp_cfg);
 if (err) {
  netdev_err(port_priv->netdev,
      "dpsw_if_set_stp err %d\n", err);
  return err;
 }

 port_priv->stp_state = state;

 return 0;
}

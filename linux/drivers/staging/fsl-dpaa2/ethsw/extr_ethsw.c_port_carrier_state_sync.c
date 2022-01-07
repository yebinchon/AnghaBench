
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethsw_port_priv {int link_state; int idx; TYPE_1__* ethsw_data; } ;
struct dpsw_link_state {int up; } ;
struct TYPE_2__ {int dpsw_handle; int mc_io; } ;


 int WARN_ONCE (int,char*) ;
 int dpsw_if_get_link_state (int ,int ,int ,int ,struct dpsw_link_state*) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct ethsw_port_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;

__attribute__((used)) static int port_carrier_state_sync(struct net_device *netdev)
{
 struct ethsw_port_priv *port_priv = netdev_priv(netdev);
 struct dpsw_link_state state;
 int err;

 err = dpsw_if_get_link_state(port_priv->ethsw_data->mc_io, 0,
         port_priv->ethsw_data->dpsw_handle,
         port_priv->idx, &state);
 if (err) {
  netdev_err(netdev, "dpsw_if_get_link_state() err %d\n", err);
  return err;
 }

 WARN_ONCE(state.up > 1, "Garbage read into link_state");

 if (state.up != port_priv->link_state) {
  if (state.up)
   netif_carrier_on(netdev);
  else
   netif_carrier_off(netdev);
  port_priv->link_state = state.up;
 }
 return 0;
}

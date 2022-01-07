
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {int speed; int duplex; int autoneg; } ;
struct ethtool_link_ksettings {TYPE_2__ base; } ;
struct ethsw_port_priv {int idx; TYPE_1__* ethsw_data; } ;
struct dpsw_link_state {int options; int rate; int member_0; } ;
struct TYPE_3__ {int dpsw_handle; int mc_io; } ;


 int AUTONEG_ENABLE ;
 int DPSW_LINK_OPT_AUTONEG ;
 int DPSW_LINK_OPT_HALF_DUPLEX ;
 int DUPLEX_FULL ;
 int dpsw_if_get_link_state (int ,int ,int ,int ,struct dpsw_link_state*) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct ethsw_port_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
ethsw_get_link_ksettings(struct net_device *netdev,
    struct ethtool_link_ksettings *link_ksettings)
{
 struct ethsw_port_priv *port_priv = netdev_priv(netdev);
 struct dpsw_link_state state = {0};
 int err = 0;

 err = dpsw_if_get_link_state(port_priv->ethsw_data->mc_io, 0,
         port_priv->ethsw_data->dpsw_handle,
         port_priv->idx,
         &state);
 if (err) {
  netdev_err(netdev, "ERROR %d getting link state\n", err);
  goto out;
 }





 if (state.options & DPSW_LINK_OPT_AUTONEG)
  link_ksettings->base.autoneg = AUTONEG_ENABLE;
 if (!(state.options & DPSW_LINK_OPT_HALF_DUPLEX))
  link_ksettings->base.duplex = DUPLEX_FULL;
 link_ksettings->base.speed = state.rate;

out:
 return err;
}

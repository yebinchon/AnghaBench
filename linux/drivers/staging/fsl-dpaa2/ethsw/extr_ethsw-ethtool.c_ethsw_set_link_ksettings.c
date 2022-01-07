
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ autoneg; scalar_t__ duplex; int speed; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;
struct ethsw_port_priv {int idx; struct ethsw_core* ethsw_data; } ;
struct ethsw_core {int dpsw_handle; int mc_io; } ;
struct dpsw_link_cfg {int options; int rate; int member_0; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int DPSW_LINK_OPT_AUTONEG ;
 int DPSW_LINK_OPT_HALF_DUPLEX ;
 scalar_t__ DUPLEX_HALF ;
 int dpsw_if_disable (int ,int ,int ,int ) ;
 int dpsw_if_enable (int ,int ,int ,int ) ;
 int dpsw_if_set_link_cfg (int ,int ,int ,int ,struct dpsw_link_cfg*) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct ethsw_port_priv* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static int
ethsw_set_link_ksettings(struct net_device *netdev,
    const struct ethtool_link_ksettings *link_ksettings)
{
 struct ethsw_port_priv *port_priv = netdev_priv(netdev);
 struct ethsw_core *ethsw = port_priv->ethsw_data;
 struct dpsw_link_cfg cfg = {0};
 bool if_running;
 int err = 0, ret;


 if_running = netif_running(netdev);
 if (if_running) {
  err = dpsw_if_disable(ethsw->mc_io, 0,
          ethsw->dpsw_handle,
          port_priv->idx);
  if (err) {
   netdev_err(netdev, "dpsw_if_disable err %d\n", err);
   return err;
  }
 }

 cfg.rate = link_ksettings->base.speed;
 if (link_ksettings->base.autoneg == AUTONEG_ENABLE)
  cfg.options |= DPSW_LINK_OPT_AUTONEG;
 else
  cfg.options &= ~DPSW_LINK_OPT_AUTONEG;
 if (link_ksettings->base.duplex == DUPLEX_HALF)
  cfg.options |= DPSW_LINK_OPT_HALF_DUPLEX;
 else
  cfg.options &= ~DPSW_LINK_OPT_HALF_DUPLEX;

 err = dpsw_if_set_link_cfg(port_priv->ethsw_data->mc_io, 0,
       port_priv->ethsw_data->dpsw_handle,
       port_priv->idx,
       &cfg);

 if (if_running) {
  ret = dpsw_if_enable(ethsw->mc_io, 0,
         ethsw->dpsw_handle,
         port_priv->idx);
  if (ret) {
   netdev_err(netdev, "dpsw_if_enable err %d\n", ret);
   return ret;
  }
 }
 return err;
}

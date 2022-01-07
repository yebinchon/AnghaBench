
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct net_device {int max_mtu; int min_mtu; int * ethtool_ops; int * netdev_ops; } ;
struct ethsw_port_priv {size_t idx; int flood; int stp_state; struct ethsw_core* ethsw_data; struct net_device* netdev; } ;
struct ethsw_core {struct ethsw_port_priv** ports; struct device* dev; } ;
struct device {int dummy; } ;


 int BR_STATE_FORWARDING ;
 int ENOMEM ;
 int ETHSW_MAX_FRAME_LENGTH ;
 int ETH_MIN_MTU ;
 int SET_NETDEV_DEV (struct net_device*,struct device*) ;
 struct net_device* alloc_etherdev (int) ;
 int dev_err (struct device*,char*,...) ;
 int ethsw_port_ethtool_ops ;
 int ethsw_port_init (struct ethsw_port_priv*,size_t) ;
 int ethsw_port_ops ;
 int free_netdev (struct net_device*) ;
 struct ethsw_port_priv* netdev_priv (struct net_device*) ;
 int register_netdev (struct net_device*) ;

__attribute__((used)) static int ethsw_probe_port(struct ethsw_core *ethsw, u16 port_idx)
{
 struct ethsw_port_priv *port_priv;
 struct device *dev = ethsw->dev;
 struct net_device *port_netdev;
 int err;

 port_netdev = alloc_etherdev(sizeof(struct ethsw_port_priv));
 if (!port_netdev) {
  dev_err(dev, "alloc_etherdev error\n");
  return -ENOMEM;
 }

 port_priv = netdev_priv(port_netdev);
 port_priv->netdev = port_netdev;
 port_priv->ethsw_data = ethsw;

 port_priv->idx = port_idx;
 port_priv->stp_state = BR_STATE_FORWARDING;


 port_priv->flood = 1;

 SET_NETDEV_DEV(port_netdev, dev);
 port_netdev->netdev_ops = &ethsw_port_ops;
 port_netdev->ethtool_ops = &ethsw_port_ethtool_ops;


 port_netdev->min_mtu = ETH_MIN_MTU;
 port_netdev->max_mtu = ETHSW_MAX_FRAME_LENGTH;

 err = ethsw_port_init(port_priv, port_idx);
 if (err)
  goto err_port_probe;

 err = register_netdev(port_netdev);
 if (err < 0) {
  dev_err(dev, "register_netdev error %d\n", err);
  goto err_port_probe;
 }

 ethsw->ports[port_idx] = port_priv;

 return 0;

err_port_probe:
 free_netdev(port_netdev);

 return err;
}

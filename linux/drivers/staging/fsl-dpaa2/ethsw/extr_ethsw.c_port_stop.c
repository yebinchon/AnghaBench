
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethsw_port_priv {int idx; TYPE_1__* ethsw_data; } ;
struct TYPE_2__ {int dpsw_handle; int mc_io; } ;


 int dpsw_if_disable (int ,int ,int ,int ) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct ethsw_port_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int port_stop(struct net_device *netdev)
{
 struct ethsw_port_priv *port_priv = netdev_priv(netdev);
 int err;

 err = dpsw_if_disable(port_priv->ethsw_data->mc_io, 0,
         port_priv->ethsw_data->dpsw_handle,
         port_priv->idx);
 if (err) {
  netdev_err(netdev, "dpsw_if_disable err %d\n", err);
  return err;
 }

 return 0;
}

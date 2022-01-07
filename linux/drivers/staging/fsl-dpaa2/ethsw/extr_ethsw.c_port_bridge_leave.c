
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethsw_port_priv {int * bridge_dev; } ;


 int ethsw_port_set_flood (struct ethsw_port_priv*,int ) ;
 struct ethsw_port_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int port_bridge_leave(struct net_device *netdev)
{
 struct ethsw_port_priv *port_priv = netdev_priv(netdev);
 int err;


 err = ethsw_port_set_flood(port_priv, 0);
 if (!err)
  port_priv->bridge_dev = ((void*)0);

 return err;
}

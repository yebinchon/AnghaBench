
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethsw_port_priv {struct net_device* bridge_dev; struct ethsw_core* ethsw_data; } ;
struct TYPE_4__ {int num_ifs; } ;
struct ethsw_core {TYPE_1__** ports; TYPE_2__ sw_attr; } ;
struct TYPE_3__ {struct net_device* bridge_dev; } ;


 int EINVAL ;
 int ethsw_port_set_flood (struct ethsw_port_priv*,int) ;
 int netdev_err (struct net_device*,char*) ;
 struct ethsw_port_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int port_bridge_join(struct net_device *netdev,
       struct net_device *upper_dev)
{
 struct ethsw_port_priv *port_priv = netdev_priv(netdev);
 struct ethsw_core *ethsw = port_priv->ethsw_data;
 int i, err;

 for (i = 0; i < ethsw->sw_attr.num_ifs; i++)
  if (ethsw->ports[i]->bridge_dev &&
      (ethsw->ports[i]->bridge_dev != upper_dev)) {
   netdev_err(netdev,
       "Only one bridge supported per DPSW object!\n");
   return -EINVAL;
  }


 err = ethsw_port_set_flood(port_priv, 1);
 if (!err)
  port_priv->bridge_dev = upper_dev;

 return err;
}

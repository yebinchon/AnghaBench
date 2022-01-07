
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netdev_phys_item_id {int id_len; int * id; } ;
struct net_device {int dummy; } ;
struct ethsw_port_priv {TYPE_1__* ethsw_data; } ;
struct TYPE_2__ {int dev_id; } ;


 struct ethsw_port_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int swdev_get_port_parent_id(struct net_device *dev,
        struct netdev_phys_item_id *ppid)
{
 struct ethsw_port_priv *port_priv = netdev_priv(dev);

 ppid->id_len = 1;
 ppid->id[0] = port_priv->ethsw_data->dev_id;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_trans {int dummy; } ;
struct net_device {int dummy; } ;
struct ethsw_port_priv {int ethsw_data; } ;


 unsigned long BR_FLOOD ;
 unsigned long BR_LEARNING ;
 int ethsw_port_set_flood (struct ethsw_port_priv*,int) ;
 int ethsw_set_learning (int ,int) ;
 struct ethsw_port_priv* netdev_priv (struct net_device*) ;
 scalar_t__ switchdev_trans_ph_prepare (struct switchdev_trans*) ;

__attribute__((used)) static int port_attr_br_flags_set(struct net_device *netdev,
      struct switchdev_trans *trans,
      unsigned long flags)
{
 struct ethsw_port_priv *port_priv = netdev_priv(netdev);
 int err = 0;

 if (switchdev_trans_ph_prepare(trans))
  return 0;


 err = ethsw_set_learning(port_priv->ethsw_data,
     !!(flags & BR_LEARNING));
 if (err)
  goto exit;

 err = ethsw_port_set_flood(port_priv, !!(flags & BR_FLOOD));

exit:
 return err;
}

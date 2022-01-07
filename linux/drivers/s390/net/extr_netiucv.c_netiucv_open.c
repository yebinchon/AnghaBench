
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netiucv_priv {int fsm; } ;
struct net_device {int dummy; } ;


 int DEV_EVENT_START ;
 int fsm_event (int ,int ,struct net_device*) ;
 struct netiucv_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int netiucv_open(struct net_device *dev)
{
 struct netiucv_priv *priv = netdev_priv(dev);

 fsm_event(priv->fsm, DEV_EVENT_START, dev);
 return 0;
}

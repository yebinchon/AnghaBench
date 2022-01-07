
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {int bLastDTPFlag_High; int bLastDTPFlag_Low; int bDynamicTxHighPower; int bDynamicTxLowPower; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int bdynamic_txpower_enable; } ;


 struct r8192_priv* ieee80211_priv (struct net_device*) ;

__attribute__((used)) static void dm_init_dynamic_txpower(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);


 priv->ieee80211->bdynamic_txpower_enable = 1;
 priv->bLastDTPFlag_High = 0;
 priv->bLastDTPFlag_Low = 0;
 priv->bDynamicTxHighPower = 0;
 priv->bDynamicTxLowPower = 0;
}

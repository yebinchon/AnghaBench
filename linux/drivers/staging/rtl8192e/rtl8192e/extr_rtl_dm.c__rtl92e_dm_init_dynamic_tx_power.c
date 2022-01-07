
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {int bLastDTPFlag_High; int bLastDTPFlag_Low; int bDynamicTxHighPower; int bDynamicTxLowPower; TYPE_1__* rtllib; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int bdynamic_txpower_enable; } ;


 struct r8192_priv* rtllib_priv (struct net_device*) ;

__attribute__((used)) static void _rtl92e_dm_init_dynamic_tx_power(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);

 priv->rtllib->bdynamic_txpower_enable = 1;
 priv->bLastDTPFlag_High = 0;
 priv->bLastDTPFlag_Low = 0;
 priv->bDynamicTxHighPower = 0;
 priv->bDynamicTxLowPower = 0;
}

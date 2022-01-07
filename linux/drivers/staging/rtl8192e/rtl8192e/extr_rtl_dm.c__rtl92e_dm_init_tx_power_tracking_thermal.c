
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {int btxpower_tracking; int btxpower_trackingInit; scalar_t__ txpower_count; TYPE_1__* rtllib; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ FwRWRF; } ;


 int COMP_POWER_TRACKING ;
 int RT_TRACE (int ,char*,int) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

__attribute__((used)) static void _rtl92e_dm_init_tx_power_tracking_thermal(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);


 if (priv->rtllib->FwRWRF)
  priv->btxpower_tracking = 1;
 else
  priv->btxpower_tracking = 0;
 priv->txpower_count = 0;
 priv->btxpower_trackingInit = 0;
 RT_TRACE(COMP_POWER_TRACKING, "pMgntInfo->bTXPowerTracking = %d\n",
   priv->btxpower_tracking);
}

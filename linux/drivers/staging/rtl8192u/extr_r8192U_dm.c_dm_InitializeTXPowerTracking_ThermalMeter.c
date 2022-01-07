
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {int btxpower_tracking; int btxpower_trackingInit; scalar_t__ txpower_count; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ FwRWRF; } ;


 struct r8192_priv* ieee80211_priv (struct net_device*) ;

__attribute__((used)) static void dm_InitializeTXPowerTracking_ThermalMeter(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);





 if (priv->ieee80211->FwRWRF)
  priv->btxpower_tracking = 1;
 else
  priv->btxpower_tracking = 0;
 priv->txpower_count = 0;
 priv->btxpower_trackingInit = 0;
}

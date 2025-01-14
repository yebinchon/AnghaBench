
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct r8192_priv {scalar_t__ CustomerID; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int* rf_rssi; int* cck_pwdb_sta; int* rf_enable_rssi_th; scalar_t__ disabled_rf; int cck_method; } ;


 int CCK_RX_VERSION_1 ;
 int CCK_RX_VERSION_2 ;
 TYPE_1__ DM_RxPathSelTable ;
 scalar_t__ RT_CID_819x_Netcore ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

__attribute__((used)) static void dm_init_rxpath_selection(struct net_device *dev)
{
 u8 i;
 struct r8192_priv *priv = ieee80211_priv(dev);

 if (priv->CustomerID == RT_CID_819x_Netcore)
  DM_RxPathSelTable.cck_method = CCK_RX_VERSION_2;
 else
  DM_RxPathSelTable.cck_method = CCK_RX_VERSION_1;
 DM_RxPathSelTable.disabled_rf = 0;
 for (i = 0; i < 4; i++) {
  DM_RxPathSelTable.rf_rssi[i] = 50;
  DM_RxPathSelTable.cck_pwdb_sta[i] = -64;
  DM_RxPathSelTable.rf_enable_rssi_th[i] = 100;
 }
}

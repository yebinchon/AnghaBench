
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rsi_hw {struct ieee80211_vif** vifs; } ;
struct ieee80211_vif {int addr; } ;


 int ETH_ALEN ;
 int RSI_MAX_VIFS ;
 int memcmp (int ,int *,int ) ;

struct ieee80211_vif *rsi_get_vif(struct rsi_hw *adapter, u8 *mac)
{
 struct ieee80211_vif *vif;
 int i;

 for (i = 0; i < RSI_MAX_VIFS; i++) {
  vif = adapter->vifs[i];
  if (!vif)
   continue;
  if (!memcmp(vif->addr, mac, ETH_ALEN))
   return vif;
 }
 return ((void*)0);
}

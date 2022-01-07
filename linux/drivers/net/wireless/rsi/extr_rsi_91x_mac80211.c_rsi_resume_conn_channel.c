
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsi_hw {struct ieee80211_vif** vifs; } ;
struct rsi_common {struct rsi_hw* priv; } ;
struct TYPE_2__ {scalar_t__ assoc; } ;
struct ieee80211_vif {scalar_t__ type; TYPE_1__ bss_conf; } ;


 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_P2P_CLIENT ;
 scalar_t__ NL80211_IFTYPE_P2P_GO ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int RSI_MAX_VIFS ;
 int rsi_switch_channel (struct rsi_hw*,struct ieee80211_vif*) ;

__attribute__((used)) static void rsi_resume_conn_channel(struct rsi_common *common)
{
 struct rsi_hw *adapter = common->priv;
 struct ieee80211_vif *vif;
 int cnt;

 for (cnt = 0; cnt < RSI_MAX_VIFS; cnt++) {
  vif = adapter->vifs[cnt];
  if (!vif)
   continue;

  if ((vif->type == NL80211_IFTYPE_AP) ||
      (vif->type == NL80211_IFTYPE_P2P_GO)) {
   rsi_switch_channel(adapter, vif);
   break;
  }
  if (((vif->type == NL80211_IFTYPE_STATION) ||
       (vif->type == NL80211_IFTYPE_P2P_CLIENT)) &&
      vif->bss_conf.assoc) {
   rsi_switch_channel(adapter, vif);
   break;
  }
 }
}

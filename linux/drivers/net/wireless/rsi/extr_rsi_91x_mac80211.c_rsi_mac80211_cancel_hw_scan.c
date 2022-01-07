
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsi_hw {int hw; struct rsi_common* priv; } ;
struct rsi_common {int bgscan_en; int mutex; int * hwscan; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct rsi_hw* priv; } ;
struct cfg80211_scan_info {int aborted; } ;


 int INFO_ZONE ;
 int RSI_STOP_BGSCAN ;
 int ieee80211_scan_completed (int ,struct cfg80211_scan_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rsi_dbg (int ,char*) ;
 int rsi_send_bgscan_params (struct rsi_common*,int ) ;

__attribute__((used)) static void rsi_mac80211_cancel_hw_scan(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif)
{
 struct rsi_hw *adapter = hw->priv;
 struct rsi_common *common = adapter->priv;
 struct cfg80211_scan_info info;

 rsi_dbg(INFO_ZONE, "***** Hardware scan stop *****\n");
 mutex_lock(&common->mutex);

 if (common->bgscan_en) {
  if (!rsi_send_bgscan_params(common, RSI_STOP_BGSCAN))
   common->bgscan_en = 0;
  info.aborted = 0;
  ieee80211_scan_completed(adapter->hw, &info);
  rsi_dbg(INFO_ZONE, "Back ground scan cancelled\n");
 }
 common->hwscan = ((void*)0);
 mutex_unlock(&common->mutex);
}

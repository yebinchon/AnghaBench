
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsi_hw {struct rsi_common* priv; } ;
struct rsi_common {int mac_ops_resumed; scalar_t__ fsm_state; int wow_flags; int bgscan_en; int mutex; struct cfg80211_scan_request* hwscan; } ;
struct ieee80211_bss_conf {int assoc; } ;
struct ieee80211_vif {struct ieee80211_bss_conf bss_conf; } ;
struct cfg80211_scan_request {scalar_t__ n_channels; } ;
struct ieee80211_scan_request {struct cfg80211_scan_request req; } ;
struct ieee80211_hw {struct rsi_hw* priv; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ FSM_MAC_INIT_DONE ;
 int INFO_ZONE ;
 int RSI_START_BGSCAN ;
 int RSI_WOW_ENABLED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rsi_dbg (int ,char*) ;
 int rsi_send_bgscan_params (struct rsi_common*,int ) ;
 int rsi_send_bgscan_probe_req (struct rsi_common*,struct ieee80211_vif*) ;

__attribute__((used)) static int rsi_mac80211_hw_scan_start(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif,
          struct ieee80211_scan_request *hw_req)
{
 struct cfg80211_scan_request *scan_req = &hw_req->req;
 struct rsi_hw *adapter = hw->priv;
 struct rsi_common *common = adapter->priv;
 struct ieee80211_bss_conf *bss = &vif->bss_conf;

 rsi_dbg(INFO_ZONE, "***** Hardware scan start *****\n");
 common->mac_ops_resumed = 0;

 if (common->fsm_state != FSM_MAC_INIT_DONE)
  return -ENODEV;

 if ((common->wow_flags & RSI_WOW_ENABLED) ||
     scan_req->n_channels == 0)
  return -EINVAL;


 if (common->bgscan_en)
  return -EBUSY;




 if (!bss->assoc)
  return 1;

 mutex_lock(&common->mutex);
 common->hwscan = scan_req;
 if (!rsi_send_bgscan_params(common, RSI_START_BGSCAN)) {
  if (!rsi_send_bgscan_probe_req(common, vif)) {
   rsi_dbg(INFO_ZONE, "Background scan started...\n");
   common->bgscan_en = 1;
  }
 }
 mutex_unlock(&common->mutex);

 return 0;
}

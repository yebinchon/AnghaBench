
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct wsm_protected_mgmt_policy {int unprotectedMgmtFramesAllowed; int encryptionForAuthFrame; scalar_t__ protectedMgmtEnable; } ;
struct wsm_join {int probe_for_join; int basic_rate_set; int beacon_interval; int ssid_len; int flags; int ssid; scalar_t__ dtim_period; int bssid; int band; int channel_number; int atim_window; int preamble_type; int mode; } ;
struct ieee80211_bss_conf {int basic_rates; int* bssid; scalar_t__ ibss_joined; } ;
struct TYPE_6__ {int in_progress; } ;
struct cw1200_common {int join_pending; int beacon_int; int conf_listen_interval; int listen_interval; int listening; int disable_beacon_filter; TYPE_4__* hw; int conf_mutex; int unjoin_work; int workqueue; int join_timeout; scalar_t__ join_status; int ba_rx_tid_mask; int ba_tx_tid_mask; int pm_state; TYPE_3__* vif; TYPE_5__* channel; scalar_t__ join_dtim_period; scalar_t__ bt_present; TYPE_1__ scan; } ;
struct cfg80211_bss {int dummy; } ;
struct TYPE_10__ {scalar_t__ band; int hw_value; } ;
struct TYPE_7__ {scalar_t__ ps_dtim_period; } ;
struct TYPE_9__ {int wiphy; TYPE_2__ conf; } ;
struct TYPE_8__ {scalar_t__ p2p; struct ieee80211_bss_conf bss_conf; } ;


 scalar_t__ CW1200_AUTH_TIMEOUT ;
 scalar_t__ CW1200_JOIN_STATUS_JOINING ;
 scalar_t__ CW1200_JOIN_TIMEOUT ;
 int IEEE80211_BSS_TYPE_ANY ;
 int IEEE80211_PRIVACY_ANY ;
 scalar_t__ NL80211_BAND_5GHZ ;
 int WLAN_EID_SSID ;
 int WSM_JOIN_FLAGS_FORCE ;
 int WSM_JOIN_FLAGS_FORCE_WITH_COMPLETE_IND ;
 int WSM_JOIN_FLAGS_P2P_GO ;
 int WSM_JOIN_MODE_BSS ;
 int WSM_JOIN_MODE_IBSS ;
 int WSM_JOIN_PREAMBLE_LONG ;
 int WSM_PHY_BAND_2_4G ;
 int WSM_PHY_BAND_5G ;
 scalar_t__ atomic_read (int *) ;
 int cancel_delayed_work_sync (int *) ;
 struct cfg80211_bss* cfg80211_get_bss (int ,TYPE_5__*,int const*,int *,int ,int ,int ) ;
 int cfg80211_put_bss (int ,struct cfg80211_bss*) ;
 int cw1200_do_unjoin (struct cw1200_common*) ;
 int cw1200_join_complete (struct cw1200_common*) ;
 int cw1200_pm_stay_awake (int *,scalar_t__) ;
 int cw1200_rate_mask_to_wsm (struct cw1200_common*,int) ;
 int cw1200_update_filtering (struct cw1200_common*) ;
 int cw1200_update_listening (struct cw1200_common*,int) ;
 int cw1200_upload_keys (struct cw1200_common*) ;
 scalar_t__ delayed_work_pending (int *) ;
 int* ieee80211_bss_get_ie (struct cfg80211_bss*,int ) ;
 int memcpy (int ,int const*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ,scalar_t__,int) ;
 int pr_err (char*) ;
 int pr_warn (char*) ;
 int queue_delayed_work (int ,int *,scalar_t__) ;
 scalar_t__ queue_work (int ,int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int wsm_flush_tx (struct cw1200_common*) ;
 scalar_t__ wsm_join (struct cw1200_common*,struct wsm_join*) ;
 int wsm_set_block_ack_policy (struct cw1200_common*,int ,int ) ;
 int wsm_set_protected_mgmt_policy (struct cw1200_common*,struct wsm_protected_mgmt_policy*) ;
 int wsm_unlock_tx (struct cw1200_common*) ;

__attribute__((used)) static void cw1200_do_join(struct cw1200_common *priv)
{
 const u8 *bssid;
 struct ieee80211_bss_conf *conf = &priv->vif->bss_conf;
 struct cfg80211_bss *bss = ((void*)0);
 struct wsm_protected_mgmt_policy mgmt_policy;
 struct wsm_join join = {
  .mode = conf->ibss_joined ?
    WSM_JOIN_MODE_IBSS : WSM_JOIN_MODE_BSS,
  .preamble_type = WSM_JOIN_PREAMBLE_LONG,
  .probe_for_join = 1,
  .atim_window = 0,
  .basic_rate_set = cw1200_rate_mask_to_wsm(priv,
         conf->basic_rates),
 };
 if (delayed_work_pending(&priv->join_timeout)) {
  pr_warn("[STA] - Join request already pending, skipping..\n");
  wsm_unlock_tx(priv);
  return;
 }

 if (priv->join_status)
  cw1200_do_unjoin(priv);

 bssid = priv->vif->bss_conf.bssid;

 bss = cfg80211_get_bss(priv->hw->wiphy, priv->channel, bssid, ((void*)0), 0,
          IEEE80211_BSS_TYPE_ANY, IEEE80211_PRIVACY_ANY);

 if (!bss && !conf->ibss_joined) {
  wsm_unlock_tx(priv);
  return;
 }

 mutex_lock(&priv->conf_mutex);




 if (atomic_read(&priv->scan.in_progress)) {
  wsm_unlock_tx(priv);
  goto done_put;
 }

 priv->join_pending = 1;


 if (!join.basic_rate_set)
  join.basic_rate_set = 7;


 if (!priv->beacon_int)
  priv->beacon_int = 1;

 join.beacon_interval = priv->beacon_int;


 if (priv->bt_present) {
  if (((priv->conf_listen_interval * 100) %
       priv->beacon_int) == 0)
   priv->listen_interval =
    ((priv->conf_listen_interval * 100) /
     priv->beacon_int);
  else
   priv->listen_interval =
    ((priv->conf_listen_interval * 100) /
     priv->beacon_int + 1);
 }

 if (priv->hw->conf.ps_dtim_period)
  priv->join_dtim_period = priv->hw->conf.ps_dtim_period;
 join.dtim_period = priv->join_dtim_period;

 join.channel_number = priv->channel->hw_value;
 join.band = (priv->channel->band == NL80211_BAND_5GHZ) ?
  WSM_PHY_BAND_5G : WSM_PHY_BAND_2_4G;

 memcpy(join.bssid, bssid, sizeof(join.bssid));

 pr_debug("[STA] Join BSSID: %pM DTIM: %d, interval: %d\n",
   join.bssid,
   join.dtim_period, priv->beacon_int);

 if (!conf->ibss_joined) {
  const u8 *ssidie;
  rcu_read_lock();
  ssidie = ieee80211_bss_get_ie(bss, WLAN_EID_SSID);
  if (ssidie) {
   join.ssid_len = ssidie[1];
   memcpy(join.ssid, &ssidie[2], join.ssid_len);
  }
  rcu_read_unlock();
 }

 if (priv->vif->p2p) {
  join.flags |= WSM_JOIN_FLAGS_P2P_GO;
  join.basic_rate_set =
   cw1200_rate_mask_to_wsm(priv, 0xFF0);
 }


 if (!conf->ibss_joined) {
  join.flags |= WSM_JOIN_FLAGS_FORCE;
  join.flags |= WSM_JOIN_FLAGS_FORCE_WITH_COMPLETE_IND;
 }

 wsm_flush_tx(priv);


 cw1200_pm_stay_awake(&priv->pm_state,
        CW1200_JOIN_TIMEOUT + CW1200_AUTH_TIMEOUT);

 cw1200_update_listening(priv, 0);


 wsm_set_block_ack_policy(priv, priv->ba_tx_tid_mask,
     priv->ba_rx_tid_mask);


 if (join.flags & WSM_JOIN_FLAGS_FORCE_WITH_COMPLETE_IND) {
  priv->join_status = CW1200_JOIN_STATUS_JOINING;
  queue_delayed_work(priv->workqueue,
       &priv->join_timeout,
       CW1200_JOIN_TIMEOUT);
 }


 mgmt_policy.protectedMgmtEnable = 0;
 mgmt_policy.unprotectedMgmtFramesAllowed = 1;
 mgmt_policy.encryptionForAuthFrame = 1;
 wsm_set_protected_mgmt_policy(priv, &mgmt_policy);


 if (wsm_join(priv, &join)) {
  pr_err("[STA] cw1200_join_work: wsm_join failed!\n");
  cancel_delayed_work_sync(&priv->join_timeout);
  cw1200_update_listening(priv, priv->listening);

  if (queue_work(priv->workqueue, &priv->unjoin_work) <= 0)
   wsm_unlock_tx(priv);
 } else {
  if (!(join.flags & WSM_JOIN_FLAGS_FORCE_WITH_COMPLETE_IND))
   cw1200_join_complete(priv);


  cw1200_upload_keys(priv);






  priv->disable_beacon_filter = 1;
 }
 cw1200_update_filtering(priv);

done_put:
 mutex_unlock(&priv->conf_mutex);
 if (bss)
  cfg80211_put_bss(priv->hw->wiphy, bss);
}

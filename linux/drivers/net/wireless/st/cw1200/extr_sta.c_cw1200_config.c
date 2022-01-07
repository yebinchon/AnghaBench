
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct wsm_switch_channel {int channel_number; } ;
struct wsm_operational_mode {int disable_more_flag_usage; int power_mode; } ;
struct TYPE_7__ {struct ieee80211_channel* chan; } ;
struct ieee80211_conf {int power_level; int flags; int dynamic_ps_timeout; int short_frame_max_tx_count; int long_frame_max_tx_count; TYPE_1__ chandef; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct cw1200_common* priv; } ;
struct ieee80211_channel {int hw_value; int center_freq; } ;
struct TYPE_11__ {int lock; } ;
struct TYPE_10__ {int lock; } ;
struct TYPE_12__ {int fast_psm_idle_period; int mode; } ;
struct TYPE_8__ {scalar_t__ aid; } ;
struct cw1200_common {int output_power; scalar_t__ join_status; int short_frame_max_tx_count; TYPE_5__ scan; int conf_mutex; TYPE_4__ tx_policy_cache; TYPE_3__* hw; int long_frame_max_tx_count; int listening; TYPE_6__ powersave_mode; TYPE_2__ bss_params; struct ieee80211_channel* channel; int channel_switch_in_progress; int channel_switch_done; } ;
struct TYPE_9__ {int max_rate_tries; } ;


 scalar_t__ CW1200_JOIN_STATUS_MONITOR ;
 scalar_t__ CW1200_JOIN_STATUS_PASSIVE ;
 scalar_t__ CW1200_JOIN_STATUS_STA ;
 int ETIMEDOUT ;
 int HZ ;
 int IEEE80211_CONF_CHANGE_CHANNEL ;
 int IEEE80211_CONF_CHANGE_IDLE ;
 int IEEE80211_CONF_CHANGE_MONITOR ;
 int IEEE80211_CONF_CHANGE_POWER ;
 int IEEE80211_CONF_CHANGE_PS ;
 int IEEE80211_CONF_CHANGE_RETRY_LIMITS ;
 int IEEE80211_CONF_IDLE ;
 int IEEE80211_CONF_PS ;
 int WSM_PSM_ACTIVE ;
 int WSM_PSM_FAST_PS ;
 int WSM_PSM_PS ;
 int __cw1200_flush (struct cw1200_common*,int) ;
 int cw1200_disable_listening (struct cw1200_common*) ;
 int cw1200_power_mode ;
 int cw1200_set_pm (struct cw1200_common*,TYPE_6__*) ;
 int down (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int,...) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int up (int *) ;
 int wait_event_timeout (int ,int,int) ;
 int wsm_lock_tx (struct cw1200_common*) ;
 int wsm_set_operational_mode (struct cw1200_common*,struct wsm_operational_mode*) ;
 int wsm_set_output_power (struct cw1200_common*,int) ;
 int wsm_switch_channel (struct cw1200_common*,struct wsm_switch_channel*) ;
 int wsm_unlock_tx (struct cw1200_common*) ;

int cw1200_config(struct ieee80211_hw *dev, u32 changed)
{
 int ret = 0;
 struct cw1200_common *priv = dev->priv;
 struct ieee80211_conf *conf = &dev->conf;

 pr_debug("CONFIG CHANGED:  %08x\n", changed);

 down(&priv->scan.lock);
 mutex_lock(&priv->conf_mutex);



 if (changed & IEEE80211_CONF_CHANGE_POWER) {
  priv->output_power = conf->power_level;
  pr_debug("[STA] TX power: %d\n", priv->output_power);
  wsm_set_output_power(priv, priv->output_power * 10);
 }

 if ((changed & IEEE80211_CONF_CHANGE_CHANNEL) &&
     (priv->channel != conf->chandef.chan)) {
  struct ieee80211_channel *ch = conf->chandef.chan;
  struct wsm_switch_channel channel = {
   .channel_number = ch->hw_value,
  };
  pr_debug("[STA] Freq %d (wsm ch: %d).\n",
    ch->center_freq, ch->hw_value);


  if (!__cw1200_flush(priv, 0)) {
   if (!wsm_switch_channel(priv, &channel)) {
    ret = wait_event_timeout(priv->channel_switch_done,
        !priv->channel_switch_in_progress,
        3 * HZ);
    if (ret) {

     priv->channel = ch;
     ret = 0;
    } else {
     ret = -ETIMEDOUT;
    }
   } else {

    wsm_unlock_tx(priv);
   }
  }
 }

 if (changed & IEEE80211_CONF_CHANGE_PS) {
  if (!(conf->flags & IEEE80211_CONF_PS))
   priv->powersave_mode.mode = WSM_PSM_ACTIVE;
  else if (conf->dynamic_ps_timeout <= 0)
   priv->powersave_mode.mode = WSM_PSM_PS;
  else
   priv->powersave_mode.mode = WSM_PSM_FAST_PS;





  if (conf->dynamic_ps_timeout >= 0x80)
   priv->powersave_mode.fast_psm_idle_period = 0xFF;
  else
   priv->powersave_mode.fast_psm_idle_period =
     conf->dynamic_ps_timeout << 1;

  if (priv->join_status == CW1200_JOIN_STATUS_STA &&
      priv->bss_params.aid)
   cw1200_set_pm(priv, &priv->powersave_mode);
 }

 if (changed & IEEE80211_CONF_CHANGE_MONITOR) {






 }

 if (changed & IEEE80211_CONF_CHANGE_IDLE) {
  struct wsm_operational_mode mode = {
   .power_mode = cw1200_power_mode,
   .disable_more_flag_usage = 1,
  };

  wsm_lock_tx(priv);

  if ((priv->join_status == CW1200_JOIN_STATUS_MONITOR) &&
      (conf->flags & IEEE80211_CONF_IDLE) &&
      !priv->listening) {
   cw1200_disable_listening(priv);
   priv->join_status = CW1200_JOIN_STATUS_PASSIVE;
  }
  wsm_set_operational_mode(priv, &mode);
  wsm_unlock_tx(priv);
 }

 if (changed & IEEE80211_CONF_CHANGE_RETRY_LIMITS) {
  pr_debug("[STA] Retry limits: %d (long), %d (short).\n",
    conf->long_frame_max_tx_count,
    conf->short_frame_max_tx_count);
  spin_lock_bh(&priv->tx_policy_cache.lock);
  priv->long_frame_max_tx_count = conf->long_frame_max_tx_count;
  priv->short_frame_max_tx_count =
   (conf->short_frame_max_tx_count < 0x0F) ?
   conf->short_frame_max_tx_count : 0x0F;
  priv->hw->max_rate_tries = priv->short_frame_max_tx_count;
  spin_unlock_bh(&priv->tx_policy_cache.lock);
 }
 mutex_unlock(&priv->conf_mutex);
 up(&priv->scan.lock);
 return ret;
}

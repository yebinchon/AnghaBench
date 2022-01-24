#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct wsm_switch_channel {int channel_number; } ;
struct wsm_operational_mode {int disable_more_flag_usage; int /*<<< orphan*/  power_mode; } ;
struct TYPE_7__ {struct ieee80211_channel* chan; } ;
struct ieee80211_conf {int power_level; int flags; int dynamic_ps_timeout; int short_frame_max_tx_count; int /*<<< orphan*/  long_frame_max_tx_count; TYPE_1__ chandef; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct cw1200_common* priv; } ;
struct ieee80211_channel {int hw_value; int /*<<< orphan*/  center_freq; } ;
struct TYPE_11__ {int /*<<< orphan*/  lock; } ;
struct TYPE_10__ {int /*<<< orphan*/  lock; } ;
struct TYPE_12__ {int fast_psm_idle_period; int /*<<< orphan*/  mode; } ;
struct TYPE_8__ {scalar_t__ aid; } ;
struct cw1200_common {int output_power; scalar_t__ join_status; int short_frame_max_tx_count; TYPE_5__ scan; int /*<<< orphan*/  conf_mutex; TYPE_4__ tx_policy_cache; TYPE_3__* hw; int /*<<< orphan*/  long_frame_max_tx_count; int /*<<< orphan*/  listening; TYPE_6__ powersave_mode; TYPE_2__ bss_params; struct ieee80211_channel* channel; int /*<<< orphan*/  channel_switch_in_progress; int /*<<< orphan*/  channel_switch_done; } ;
struct TYPE_9__ {int max_rate_tries; } ;

/* Variables and functions */
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
 int /*<<< orphan*/  WSM_PSM_ACTIVE ; 
 int /*<<< orphan*/  WSM_PSM_FAST_PS ; 
 int /*<<< orphan*/  WSM_PSM_PS ; 
 int /*<<< orphan*/  FUNC0 (struct cw1200_common*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cw1200_common*) ; 
 int /*<<< orphan*/  cw1200_power_mode ; 
 int /*<<< orphan*/  FUNC2 (struct cw1200_common*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC12 (struct cw1200_common*,struct wsm_operational_mode*) ; 
 int /*<<< orphan*/  FUNC13 (struct cw1200_common*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct cw1200_common*,struct wsm_switch_channel*) ; 
 int /*<<< orphan*/  FUNC15 (struct cw1200_common*) ; 

int FUNC16(struct ieee80211_hw *dev, u32 changed)
{
	int ret = 0;
	struct cw1200_common *priv = dev->priv;
	struct ieee80211_conf *conf = &dev->conf;

	FUNC6("CONFIG CHANGED:  %08x\n", changed);

	FUNC3(&priv->scan.lock);
	FUNC4(&priv->conf_mutex);
	/* TODO: IEEE80211_CONF_CHANGE_QOS */
	/* TODO: IEEE80211_CONF_CHANGE_LISTEN_INTERVAL */

	if (changed & IEEE80211_CONF_CHANGE_POWER) {
		priv->output_power = conf->power_level;
		FUNC6("[STA] TX power: %d\n", priv->output_power);
		FUNC13(priv, priv->output_power * 10);
	}

	if ((changed & IEEE80211_CONF_CHANGE_CHANNEL) &&
	    (priv->channel != conf->chandef.chan)) {
		struct ieee80211_channel *ch = conf->chandef.chan;
		struct wsm_switch_channel channel = {
			.channel_number = ch->hw_value,
		};
		FUNC6("[STA] Freq %d (wsm ch: %d).\n",
			 ch->center_freq, ch->hw_value);

		/* __cw1200_flush() implicitly locks tx, if successful */
		if (!FUNC0(priv, false)) {
			if (!FUNC14(priv, &channel)) {
				ret = FUNC10(priv->channel_switch_done,
							 !priv->channel_switch_in_progress,
							 3 * HZ);
				if (ret) {
					/* Already unlocks if successful */
					priv->channel = ch;
					ret = 0;
				} else {
					ret = -ETIMEDOUT;
				}
			} else {
				/* Unlock if switch channel fails */
				FUNC15(priv);
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

		/* Firmware requires that value for this 1-byte field must
		 * be specified in units of 500us. Values above the 128ms
		 * threshold are not supported.
		 */
		if (conf->dynamic_ps_timeout >= 0x80)
			priv->powersave_mode.fast_psm_idle_period = 0xFF;
		else
			priv->powersave_mode.fast_psm_idle_period =
					conf->dynamic_ps_timeout << 1;

		if (priv->join_status == CW1200_JOIN_STATUS_STA &&
		    priv->bss_params.aid)
			FUNC2(priv, &priv->powersave_mode);
	}

	if (changed & IEEE80211_CONF_CHANGE_MONITOR) {
		/* TBD: It looks like it's transparent
		 * there's a monitor interface present -- use this
		 * to determine for example whether to calculate
		 * timestamps for packets or not, do not use instead
		 * of filter flags!
		 */
	}

	if (changed & IEEE80211_CONF_CHANGE_IDLE) {
		struct wsm_operational_mode mode = {
			.power_mode = cw1200_power_mode,
			.disable_more_flag_usage = true,
		};

		FUNC11(priv);
		/* Disable p2p-dev mode forced by TX request */
		if ((priv->join_status == CW1200_JOIN_STATUS_MONITOR) &&
		    (conf->flags & IEEE80211_CONF_IDLE) &&
		    !priv->listening) {
			FUNC1(priv);
			priv->join_status = CW1200_JOIN_STATUS_PASSIVE;
		}
		FUNC12(priv, &mode);
		FUNC15(priv);
	}

	if (changed & IEEE80211_CONF_CHANGE_RETRY_LIMITS) {
		FUNC6("[STA] Retry limits: %d (long), %d (short).\n",
			 conf->long_frame_max_tx_count,
			 conf->short_frame_max_tx_count);
		FUNC7(&priv->tx_policy_cache.lock);
		priv->long_frame_max_tx_count = conf->long_frame_max_tx_count;
		priv->short_frame_max_tx_count =
			(conf->short_frame_max_tx_count < 0x0F) ?
			conf->short_frame_max_tx_count : 0x0F;
		priv->hw->max_rate_tries = priv->short_frame_max_tx_count;
		FUNC8(&priv->tx_policy_cache.lock);
	}
	FUNC5(&priv->conf_mutex);
	FUNC9(&priv->scan.lock);
	return ret;
}
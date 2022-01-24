#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wsm_start {int probe_delay; int /*<<< orphan*/ * ssid; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  basic_rate_set; int /*<<< orphan*/  dtim_period; int /*<<< orphan*/  beacon_interval; int /*<<< orphan*/  band; int /*<<< orphan*/  channel_number; int /*<<< orphan*/  preamble; int /*<<< orphan*/  mode; } ;
struct wsm_operational_mode {int disable_more_flag_usage; int /*<<< orphan*/  power_mode; } ;
struct ieee80211_bss_conf {int /*<<< orphan*/  dtim_period; int /*<<< orphan*/  beacon_int; int /*<<< orphan*/  ssid; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  hidden_ssid; int /*<<< orphan*/  basic_rates; int /*<<< orphan*/  use_short_preamble; } ;
struct cw1200_common {int /*<<< orphan*/  join_status; int /*<<< orphan*/  p2p_ps_modeinfo; TYPE_2__* vif; int /*<<< orphan*/  link_id_db; int /*<<< orphan*/  join_dtim_period; int /*<<< orphan*/  beacon_int; TYPE_1__* channel; } ;
struct TYPE_4__ {scalar_t__ p2p; struct ieee80211_bss_conf bss_conf; } ;
struct TYPE_3__ {int /*<<< orphan*/  hw_value; int /*<<< orphan*/  band; } ;

/* Variables and functions */
 int /*<<< orphan*/  CW1200_JOIN_STATUS_AP ; 
 int /*<<< orphan*/  NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  WSM_JOIN_PREAMBLE_LONG ; 
 int /*<<< orphan*/  WSM_JOIN_PREAMBLE_SHORT ; 
 int /*<<< orphan*/  WSM_PHY_BAND_2_4G ; 
 int /*<<< orphan*/  WSM_PHY_BAND_5G ; 
 int /*<<< orphan*/  WSM_START_MODE_AP ; 
 int /*<<< orphan*/  WSM_START_MODE_P2P_GO ; 
 int /*<<< orphan*/  cw1200_power_mode ; 
 int /*<<< orphan*/  FUNC0 (struct cw1200_common*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cw1200_common*) ; 
 int FUNC2 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct cw1200_common*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cw1200_common*,struct wsm_operational_mode*) ; 
 int /*<<< orphan*/  FUNC8 (struct cw1200_common*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct cw1200_common*,struct wsm_start*) ; 

__attribute__((used)) static int FUNC10(struct cw1200_common *priv)
{
	int ret;
	struct ieee80211_bss_conf *conf = &priv->vif->bss_conf;
	struct wsm_start start = {
		.mode = priv->vif->p2p ?
				WSM_START_MODE_P2P_GO : WSM_START_MODE_AP,
		.band = (priv->channel->band == NL80211_BAND_5GHZ) ?
				WSM_PHY_BAND_5G : WSM_PHY_BAND_2_4G,
		.channel_number = priv->channel->hw_value,
		.beacon_interval = conf->beacon_int,
		.dtim_period = conf->dtim_period,
		.preamble = conf->use_short_preamble ?
				WSM_JOIN_PREAMBLE_SHORT :
				WSM_JOIN_PREAMBLE_LONG,
		.probe_delay = 100,
		.basic_rate_set = FUNC0(priv,
				conf->basic_rates),
	};
	struct wsm_operational_mode mode = {
		.power_mode = cw1200_power_mode,
		.disable_more_flag_usage = true,
	};

	FUNC4(start.ssid, 0, sizeof(start.ssid));
	if (!conf->hidden_ssid) {
		start.ssid_len = conf->ssid_len;
		FUNC3(start.ssid, conf->ssid, start.ssid_len);
	}

	priv->beacon_int = conf->beacon_int;
	priv->join_dtim_period = conf->dtim_period;

	FUNC4(&priv->link_id_db, 0, sizeof(priv->link_id_db));

	FUNC5("[AP] ch: %d(%d), bcn: %d(%d), brt: 0x%.8X, ssid: %.*s.\n",
		 start.channel_number, start.band,
		 start.beacon_interval, start.dtim_period,
		 start.basic_rate_set,
		 start.ssid_len, start.ssid);
	ret = FUNC9(priv, &start);
	if (!ret)
		ret = FUNC2(priv);
	if (!ret && priv->vif->p2p) {
		FUNC5("[AP] Setting p2p powersave configuration.\n");
		FUNC8(priv, &priv->p2p_ps_modeinfo);
	}
	if (!ret) {
		FUNC6(priv, 0, 0);
		priv->join_status = CW1200_JOIN_STATUS_AP;
		FUNC1(priv);
	}
	FUNC7(priv, &mode);
	return ret;
}
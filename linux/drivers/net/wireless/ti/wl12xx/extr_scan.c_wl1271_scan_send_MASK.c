#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct wl12xx_vif {scalar_t__ dev_role_id; scalar_t__ role_id; } ;
struct TYPE_6__ {scalar_t__ role_id; scalar_t__ n_ch; int /*<<< orphan*/  ssid; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  band; int /*<<< orphan*/  scan_tag; int /*<<< orphan*/  tid_trigger; int /*<<< orphan*/  n_probe_reqs; void* tx_rate; int /*<<< orphan*/  scan_options; } ;
struct wl1271_cmd_trigger_scan_to {void* timeout; TYPE_1__ params; int /*<<< orphan*/  addr; int /*<<< orphan*/  channels; } ;
struct wl1271_cmd_scan {void* timeout; TYPE_1__ params; int /*<<< orphan*/  addr; int /*<<< orphan*/  channels; } ;
struct TYPE_8__ {scalar_t__ split_scan_timeout; int /*<<< orphan*/  num_probe_reqs; } ;
struct TYPE_9__ {TYPE_3__ scan; } ;
struct TYPE_7__ {TYPE_5__* req; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;
struct wl1271 {TYPE_4__ conf; TYPE_2__ scan; } ;
struct ieee80211_vif {int /*<<< orphan*/  addr; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_10__ {scalar_t__ n_ssids; int /*<<< orphan*/  ie_len; int /*<<< orphan*/  ie; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SCAN ; 
 int /*<<< orphan*/  CMD_TRIGGER_SCAN_TO ; 
 int /*<<< orphan*/  CONF_TX_AC_ANY_TID ; 
 int /*<<< orphan*/  DEBUG_SCAN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NL80211_BAND_2GHZ ; 
 scalar_t__ FUNC0 (int) ; 
 int WL1271_NOTHING_TO_SCAN ; 
 int /*<<< orphan*/  WL1271_SCAN_BAND_2_4_GHZ ; 
 int /*<<< orphan*/  WL1271_SCAN_BAND_5_GHZ ; 
 int /*<<< orphan*/  WL1271_SCAN_DEFAULT_TAG ; 
 int /*<<< orphan*/  WL1271_SCAN_OPT_PASSIVE ; 
 int /*<<< orphan*/  WL1271_SCAN_OPT_SPLIT_SCAN ; 
 scalar_t__ WL12XX_INVALID_ROLE_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct wl1271_cmd_trigger_scan_to*) ; 
 struct wl1271_cmd_trigger_scan_to* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct wl1271*,int /*<<< orphan*/ ,struct wl1271_cmd_trigger_scan_to*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,struct wl1271_cmd_trigger_scan_to*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (struct wl1271*,TYPE_5__*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC10 (struct wl1271*,struct wl12xx_vif*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct ieee80211_vif* FUNC11 (struct wl12xx_vif*) ; 
 scalar_t__ FUNC12 (struct wl12xx_vif*) ; 

__attribute__((used)) static int FUNC13(struct wl1271 *wl, struct wl12xx_vif *wlvif,
			    enum nl80211_band band,
			    bool passive, u32 basic_rate)
{
	struct ieee80211_vif *vif = FUNC11(wlvif);
	struct wl1271_cmd_scan *cmd;
	struct wl1271_cmd_trigger_scan_to *trigger;
	int ret;
	u16 scan_options = 0;

	/* skip active scans if we don't have SSIDs */
	if (!passive && wl->scan.req->n_ssids == 0)
		return WL1271_NOTHING_TO_SCAN;

	cmd = FUNC4(sizeof(*cmd), GFP_KERNEL);
	trigger = FUNC4(sizeof(*trigger), GFP_KERNEL);
	if (!cmd || !trigger) {
		ret = -ENOMEM;
		goto out;
	}

	if (wl->conf.scan.split_scan_timeout)
		scan_options |= WL1271_SCAN_OPT_SPLIT_SCAN;

	if (passive)
		scan_options |= WL1271_SCAN_OPT_PASSIVE;

	/* scan on the dev role if the regular one is not started */
	if (FUNC12(wlvif))
		cmd->params.role_id = wlvif->dev_role_id;
	else
		cmd->params.role_id = wlvif->role_id;

	if (FUNC0(cmd->params.role_id == WL12XX_INVALID_ROLE_ID)) {
		ret = -EINVAL;
		goto out;
	}

	cmd->params.scan_options = FUNC1(scan_options);

	cmd->params.n_ch = FUNC9(wl, wl->scan.req,
						    cmd->channels,
						    band, passive);
	if (cmd->params.n_ch == 0) {
		ret = WL1271_NOTHING_TO_SCAN;
		goto out;
	}

	cmd->params.tx_rate = FUNC2(basic_rate);
	cmd->params.n_probe_reqs = wl->conf.scan.num_probe_reqs;
	cmd->params.tid_trigger = CONF_TX_AC_ANY_TID;
	cmd->params.scan_tag = WL1271_SCAN_DEFAULT_TAG;

	if (band == NL80211_BAND_2GHZ)
		cmd->params.band = WL1271_SCAN_BAND_2_4_GHZ;
	else
		cmd->params.band = WL1271_SCAN_BAND_5_GHZ;

	if (wl->scan.ssid_len) {
		cmd->params.ssid_len = wl->scan.ssid_len;
		FUNC5(cmd->params.ssid, wl->scan.ssid, wl->scan.ssid_len);
	}

	FUNC5(cmd->addr, vif->addr, ETH_ALEN);

	ret = FUNC10(wl, wlvif,
					 cmd->params.role_id, band,
					 wl->scan.ssid, wl->scan.ssid_len,
					 wl->scan.req->ie,
					 wl->scan.req->ie_len, NULL, 0, false);
	if (ret < 0) {
		FUNC8("PROBE request template failed");
		goto out;
	}

	trigger->timeout = FUNC2(wl->conf.scan.split_scan_timeout);
	ret = FUNC6(wl, CMD_TRIGGER_SCAN_TO, trigger,
			      sizeof(*trigger), 0);
	if (ret < 0) {
		FUNC8("trigger scan to failed for hw scan");
		goto out;
	}

	FUNC7(DEBUG_SCAN, "SCAN: ", cmd, sizeof(*cmd));

	ret = FUNC6(wl, CMD_SCAN, cmd, sizeof(*cmd), 0);
	if (ret < 0) {
		FUNC8("SCAN failed");
		goto out;
	}

out:
	FUNC3(cmd);
	FUNC3(trigger);
	return ret;
}
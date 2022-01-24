#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wlcore_scan_channels {scalar_t__ role_id; int rssi_threshold; int total_cycles; scalar_t__ dfs; scalar_t__* active; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; int /*<<< orphan*/  tag; int /*<<< orphan*/  rate; scalar_t__ terminate_after; int /*<<< orphan*/  n_probe_reqs; scalar_t__ protect; scalar_t__ urgency; scalar_t__ add_broadcast; scalar_t__ filter; scalar_t__ ssid_from_list; int /*<<< orphan*/  bss_type; scalar_t__ snr_threshold; int /*<<< orphan*/  scan_type; } ;
struct wl18xx_cmd_scan_params {scalar_t__ role_id; int rssi_threshold; int total_cycles; scalar_t__ dfs; scalar_t__* active; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; int /*<<< orphan*/  tag; int /*<<< orphan*/  rate; scalar_t__ terminate_after; int /*<<< orphan*/  n_probe_reqs; scalar_t__ protect; scalar_t__ urgency; scalar_t__ add_broadcast; scalar_t__ filter; scalar_t__ ssid_from_list; int /*<<< orphan*/  bss_type; scalar_t__ snr_threshold; int /*<<< orphan*/  scan_type; } ;
struct wl12xx_vif {scalar_t__ dev_role_id; scalar_t__ role_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  num_probe_reqs; } ;
struct TYPE_5__ {TYPE_1__ scan; } ;
struct wl1271 {TYPE_2__ conf; } ;
struct cfg80211_scan_request {int n_ssids; int /*<<< orphan*/  ie_len; int /*<<< orphan*/  ie; TYPE_3__* ssids; scalar_t__ no_cck; int /*<<< orphan*/  n_channels; int /*<<< orphan*/  channels; } ;
struct TYPE_6__ {int /*<<< orphan*/  ssid_len; int /*<<< orphan*/ * ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SCAN ; 
 int /*<<< orphan*/  DEBUG_SCAN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NL80211_BAND_2GHZ ; 
 int /*<<< orphan*/  NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  SCAN_BSS_TYPE_ANY ; 
 int /*<<< orphan*/  SCAN_TYPE_SEARCH ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  WL1271_SCAN_DEFAULT_TAG ; 
 scalar_t__ WL12XX_INVALID_ROLE_ID ; 
 int /*<<< orphan*/  WL18XX_SCAN_RATE_6 ; 
 int /*<<< orphan*/  FUNC1 (struct wlcore_scan_channels*) ; 
 struct wlcore_scan_channels* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct wl1271*,int /*<<< orphan*/ ,struct wlcore_scan_channels*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct wlcore_scan_channels*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (struct wl1271*,struct wl12xx_vif*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct wlcore_scan_channels*,struct wlcore_scan_channels*) ; 
 scalar_t__ FUNC9 (struct wl12xx_vif*) ; 
 int /*<<< orphan*/  FUNC10 (struct wl1271*,struct wlcore_scan_channels*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct wl1271 *wl, struct wl12xx_vif *wlvif,
			    struct cfg80211_scan_request *req)
{
	struct wl18xx_cmd_scan_params *cmd;
	struct wlcore_scan_channels *cmd_channels = NULL;
	int ret;

	cmd = FUNC2(sizeof(*cmd), GFP_KERNEL);
	if (!cmd) {
		ret = -ENOMEM;
		goto out;
	}

	/* scan on the dev role if the regular one is not started */
	if (FUNC9(wlvif))
		cmd->role_id = wlvif->dev_role_id;
	else
		cmd->role_id = wlvif->role_id;

	if (FUNC0(cmd->role_id == WL12XX_INVALID_ROLE_ID)) {
		ret = -EINVAL;
		goto out;
	}

	cmd->scan_type = SCAN_TYPE_SEARCH;
	cmd->rssi_threshold = -127;
	cmd->snr_threshold = 0;

	cmd->bss_type = SCAN_BSS_TYPE_ANY;

	cmd->ssid_from_list = 0;
	cmd->filter = 0;
	cmd->add_broadcast = 0;

	cmd->urgency = 0;
	cmd->protect = 0;

	cmd->n_probe_reqs = wl->conf.scan.num_probe_reqs;
	cmd->terminate_after = 0;

	/* configure channels */
	FUNC0(req->n_ssids > 1);

	cmd_channels = FUNC2(sizeof(*cmd_channels), GFP_KERNEL);
	if (!cmd_channels) {
		ret = -ENOMEM;
		goto out;
	}

	FUNC10(wl, cmd_channels, req->channels,
				    req->n_channels, req->n_ssids,
				    SCAN_TYPE_SEARCH);
	FUNC8(cmd, cmd_channels);

	/*
	 * all the cycles params (except total cycles) should
	 * remain 0 for normal scan
	 */
	cmd->total_cycles = 1;

	if (req->no_cck)
		cmd->rate = WL18XX_SCAN_RATE_6;

	cmd->tag = WL1271_SCAN_DEFAULT_TAG;

	if (req->n_ssids) {
		cmd->ssid_len = req->ssids[0].ssid_len;
		FUNC3(cmd->ssid, req->ssids[0].ssid, cmd->ssid_len);
	}

	/* TODO: per-band ies? */
	if (cmd->active[0]) {
		u8 band = NL80211_BAND_2GHZ;
		ret = FUNC7(wl, wlvif,
				 cmd->role_id, band,
				 req->ssids ? req->ssids[0].ssid : NULL,
				 req->ssids ? req->ssids[0].ssid_len : 0,
				 req->ie,
				 req->ie_len,
				 NULL,
				 0,
				 false);
		if (ret < 0) {
			FUNC6("2.4GHz PROBE request template failed");
			goto out;
		}
	}

	if (cmd->active[1] || cmd->dfs) {
		u8 band = NL80211_BAND_5GHZ;
		ret = FUNC7(wl, wlvif,
				 cmd->role_id, band,
				 req->ssids ? req->ssids[0].ssid : NULL,
				 req->ssids ? req->ssids[0].ssid_len : 0,
				 req->ie,
				 req->ie_len,
				 NULL,
				 0,
				 false);
		if (ret < 0) {
			FUNC6("5GHz PROBE request template failed");
			goto out;
		}
	}

	FUNC5(DEBUG_SCAN, "SCAN: ", cmd, sizeof(*cmd));

	ret = FUNC4(wl, CMD_SCAN, cmd, sizeof(*cmd), 0);
	if (ret < 0) {
		FUNC6("SCAN failed");
		goto out;
	}

out:
	FUNC1(cmd_channels);
	FUNC1(cmd);
	return ret;
}
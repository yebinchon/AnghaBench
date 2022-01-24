#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wlcore_cmd_cac_start {int /*<<< orphan*/  bandwidth; int /*<<< orphan*/  band; int /*<<< orphan*/  channel; int /*<<< orphan*/  role_id; } ;
struct wl12xx_vif {scalar_t__ band; int /*<<< orphan*/  channel_type; int /*<<< orphan*/  channel; int /*<<< orphan*/  role_id; } ;
struct wl1271 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_CAC_START ; 
 int /*<<< orphan*/  CMD_CAC_STOP ; 
 int /*<<< orphan*/  DEBUG_CMD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  WLCORE_BAND_5GHZ ; 
 int /*<<< orphan*/  FUNC0 (struct wlcore_cmd_cac_start*) ; 
 struct wlcore_cmd_cac_start* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,struct wlcore_cmd_cac_start*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct wl1271 *wl, struct wl12xx_vif *wlvif, bool start)
{
	struct wlcore_cmd_cac_start *cmd;
	int ret = 0;

	FUNC3(DEBUG_CMD, "cmd cac (channel %d) %s",
		     wlvif->channel, start ? "start" : "stop");

	cmd = FUNC1(sizeof(*cmd), GFP_KERNEL);
	if (!cmd)
		return -ENOMEM;

	cmd->role_id = wlvif->role_id;
	cmd->channel = wlvif->channel;
	if (wlvif->band == NL80211_BAND_5GHZ)
		cmd->band = WLCORE_BAND_5GHZ;
	cmd->bandwidth = FUNC5(wlvif->channel_type);

	ret = FUNC2(wl,
			      start ? CMD_CAC_START : CMD_CAC_STOP,
			      cmd, sizeof(*cmd), 0);
	if (ret < 0) {
		FUNC4("failed to send cac command");
		goto out_free;
	}

out_free:
	FUNC0(cmd);
	return ret;
}
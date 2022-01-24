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
typedef  int /*<<< orphan*/  u8 ;
struct wl18xx_cmd_dfs_radar_debug {int /*<<< orphan*/  channel; } ;
struct wl1271 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_DFS_RADAR_DETECTION_DEBUG ; 
 int /*<<< orphan*/  DEBUG_CMD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct wl18xx_cmd_dfs_radar_debug*) ; 
 struct wl18xx_cmd_dfs_radar_debug* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,struct wl18xx_cmd_dfs_radar_debug*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(struct wl1271 *wl, u8 channel)
{
	struct wl18xx_cmd_dfs_radar_debug *cmd;
	int ret = 0;

	FUNC3(DEBUG_CMD, "cmd radar detection debug (chan %d)",
		     channel);

	cmd = FUNC1(sizeof(*cmd), GFP_KERNEL);
	if (!cmd)
		return -ENOMEM;

	cmd->channel = channel;

	ret = FUNC2(wl, CMD_DFS_RADAR_DETECTION_DEBUG,
			      cmd, sizeof(*cmd), 0);
	if (ret < 0) {
		FUNC4("failed to send radar detection debug command");
		goto out_free;
	}

out_free:
	FUNC0(cmd);
	return ret;
}
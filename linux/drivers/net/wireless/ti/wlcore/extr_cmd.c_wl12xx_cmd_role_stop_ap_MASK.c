#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  global_hlid; int /*<<< orphan*/  bcast_hlid; } ;
struct wl12xx_vif {TYPE_1__ ap; int /*<<< orphan*/  role_id; } ;
struct wl12xx_cmd_role_stop {int /*<<< orphan*/  role_id; } ;
struct wl1271 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ROLE_STOP ; 
 int /*<<< orphan*/  DEBUG_CMD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct wl12xx_cmd_role_stop*) ; 
 struct wl12xx_cmd_role_stop* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,struct wl12xx_cmd_role_stop*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wl1271*,struct wl12xx_vif*,int /*<<< orphan*/ *) ; 

int FUNC6(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
	struct wl12xx_cmd_role_stop *cmd;
	int ret;

	cmd = FUNC1(sizeof(*cmd), GFP_KERNEL);
	if (!cmd) {
		ret = -ENOMEM;
		goto out;
	}

	FUNC3(DEBUG_CMD, "cmd role stop ap %d", wlvif->role_id);

	cmd->role_id = wlvif->role_id;

	ret = FUNC2(wl, CMD_ROLE_STOP, cmd, sizeof(*cmd), 0);
	if (ret < 0) {
		FUNC4("failed to initiate cmd role stop ap");
		goto out_free;
	}

	FUNC5(wl, wlvif, &wlvif->ap.bcast_hlid);
	FUNC5(wl, wlvif, &wlvif->ap.global_hlid);

out_free:
	FUNC0(cmd);

out:
	return ret;
}
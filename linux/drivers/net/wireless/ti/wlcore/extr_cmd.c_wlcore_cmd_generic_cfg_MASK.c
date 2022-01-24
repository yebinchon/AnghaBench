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
typedef  void* u8 ;
struct wlcore_cmd_generic_cfg {void* value; void* enable; void* feature; int /*<<< orphan*/  role_id; } ;
struct wl12xx_vif {int /*<<< orphan*/  role_id; } ;
struct wl1271 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_GENERIC_CFG ; 
 int /*<<< orphan*/  DEBUG_CMD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct wlcore_cmd_generic_cfg*) ; 
 struct wlcore_cmd_generic_cfg* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,struct wlcore_cmd_generic_cfg*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(struct wl1271 *wl, struct wl12xx_vif *wlvif,
			   u8 feature, u8 enable, u8 value)
{
	struct wlcore_cmd_generic_cfg *cmd;
	int ret;

	FUNC3(DEBUG_CMD,
		     "cmd generic cfg (role %d feature %d enable %d value %d)",
		     wlvif->role_id, feature, enable, value);

	cmd = FUNC1(sizeof(*cmd), GFP_KERNEL);
	if (!cmd)
		return -ENOMEM;

	cmd->role_id = wlvif->role_id;
	cmd->feature = feature;
	cmd->enable = enable;
	cmd->value = value;

	ret = FUNC2(wl, CMD_GENERIC_CFG, cmd, sizeof(*cmd), 0);
	if (ret < 0) {
		FUNC4("failed to send generic cfg command");
		goto out_free;
	}
out_free:
	FUNC0(cmd);
	return ret;
}
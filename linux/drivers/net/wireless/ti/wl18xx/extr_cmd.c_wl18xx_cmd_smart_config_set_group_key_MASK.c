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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct wl18xx_cmd_smart_config_set_group_key {int /*<<< orphan*/  key; int /*<<< orphan*/  group_id; } ;
struct wl1271 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SMART_CONFIG_SET_GROUP_KEY ; 
 int /*<<< orphan*/  DEBUG_CMD ; 
 int E2BIG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wl18xx_cmd_smart_config_set_group_key*) ; 
 struct wl18xx_cmd_smart_config_set_group_key* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC4 (struct wl1271*,int /*<<< orphan*/ ,struct wl18xx_cmd_smart_config_set_group_key*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

int FUNC7(struct wl1271 *wl, u16 group_id,
					  u8 key_len, u8 *key)
{
	struct wl18xx_cmd_smart_config_set_group_key *cmd;
	int ret = 0;

	FUNC5(DEBUG_CMD, "cmd smart config set group key id=0x%x",
		     group_id);

	if (key_len != sizeof(cmd->key)) {
		FUNC6("invalid group key size: %d", key_len);
		return -E2BIG;
	}

	cmd = FUNC2(sizeof(*cmd), GFP_KERNEL);
	if (!cmd) {
		ret = -ENOMEM;
		goto out;
	}

	cmd->group_id = FUNC0(group_id);
	FUNC3(cmd->key, key, key_len);

	ret = FUNC4(wl, CMD_SMART_CONFIG_SET_GROUP_KEY, cmd,
			      sizeof(*cmd), 0);
	if (ret < 0) {
		FUNC6("failed to send smart config set group key cmd");
		goto out_free;
	}

out_free:
	FUNC1(cmd);
out:
	return ret;
}
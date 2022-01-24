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
struct wl1271_cmd_set_keys {int /*<<< orphan*/  key_type; int /*<<< orphan*/  key_action; int /*<<< orphan*/  lid_key_type; void* key_id; void* hlid; } ;
struct wl1271 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SET_KEYS ; 
 int /*<<< orphan*/  DEBUG_CMD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KEY_SET_ID ; 
 int /*<<< orphan*/  KEY_WEP ; 
 int /*<<< orphan*/  WEP_DEFAULT_LID_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wl1271_cmd_set_keys*) ; 
 struct wl1271_cmd_set_keys* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct wl1271_cmd_set_keys*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1271 *wl, u8 id, u8 hlid)
{
	struct wl1271_cmd_set_keys *cmd;
	int ret = 0;

	FUNC4(DEBUG_CMD, "cmd set_default_wep_key %d", id);

	cmd = FUNC2(sizeof(*cmd), GFP_KERNEL);
	if (!cmd) {
		ret = -ENOMEM;
		goto out;
	}

	cmd->hlid = hlid;
	cmd->key_id = id;
	cmd->lid_key_type = WEP_DEFAULT_LID_TYPE;
	cmd->key_action = FUNC0(KEY_SET_ID);
	cmd->key_type = KEY_WEP;

	ret = FUNC3(wl, CMD_SET_KEYS, cmd, sizeof(*cmd), 0);
	if (ret < 0) {
		FUNC5("cmd set_default_wep_key failed: %d", ret);
		goto out;
	}

out:
	FUNC1(cmd);

	return ret;
}
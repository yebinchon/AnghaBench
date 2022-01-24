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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ bcast_hlid; } ;
struct wl12xx_vif {TYPE_1__ ap; } ;
struct wl1271_cmd_set_keys {scalar_t__ key; int /*<<< orphan*/ * ac_seq_num32; void** ac_seq_num16; scalar_t__ key_id; scalar_t__ key_type; scalar_t__ key_size; void* key_action; scalar_t__ hlid; scalar_t__ lid_key_type; } ;
struct wl1271 {int dummy; } ;

/* Variables and functions */
 scalar_t__ BROADCAST_LID_TYPE ; 
 int /*<<< orphan*/  CMD_SET_KEYS ; 
 int /*<<< orphan*/  DEBUG_CRYPT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ KEY_TKIP ; 
 scalar_t__ KEY_WEP ; 
 scalar_t__ UNICAST_LID_TYPE ; 
 scalar_t__ WEP_DEFAULT_LID_TYPE ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wl1271_cmd_set_keys*) ; 
 struct wl1271_cmd_set_keys* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__ const*,scalar_t__) ; 
 int FUNC5 (struct wl1271*,int /*<<< orphan*/ ,struct wl1271_cmd_set_keys*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,struct wl1271_cmd_set_keys*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int FUNC9(struct wl1271 *wl, struct wl12xx_vif *wlvif,
			  u16 action, u8 id, u8 key_type,
			  u8 key_size, const u8 *key, u8 hlid, u32 tx_seq_32,
			  u16 tx_seq_16)
{
	struct wl1271_cmd_set_keys *cmd;
	int ret = 0;
	u8 lid_type;

	cmd = FUNC3(sizeof(*cmd), GFP_KERNEL);
	if (!cmd)
		return -ENOMEM;

	if (hlid == wlvif->ap.bcast_hlid) {
		if (key_type == KEY_WEP)
			lid_type = WEP_DEFAULT_LID_TYPE;
		else
			lid_type = BROADCAST_LID_TYPE;
	} else {
		lid_type = UNICAST_LID_TYPE;
	}

	FUNC6(DEBUG_CRYPT, "ap key action: %d id: %d lid: %d type: %d"
		     " hlid: %d", (int)action, (int)id, (int)lid_type,
		     (int)key_type, (int)hlid);

	cmd->lid_key_type = lid_type;
	cmd->hlid = hlid;
	cmd->key_action = FUNC0(action);
	cmd->key_size = key_size;
	cmd->key_type = key_type;
	cmd->key_id = id;
	cmd->ac_seq_num16[0] = FUNC0(tx_seq_16);
	cmd->ac_seq_num32[0] = FUNC1(tx_seq_32);

	if (key_type == KEY_TKIP) {
		/*
		 * We get the key in the following form:
		 * TKIP (16 bytes) - TX MIC (8 bytes) - RX MIC (8 bytes)
		 * but the target is expecting:
		 * TKIP - RX MIC - TX MIC
		 */
		FUNC4(cmd->key, key, 16);
		FUNC4(cmd->key + 16, key + 24, 8);
		FUNC4(cmd->key + 24, key + 16, 8);
	} else {
		FUNC4(cmd->key, key, key_size);
	}

	FUNC7(DEBUG_CRYPT, "TARGET AP KEY: ", cmd, sizeof(*cmd));

	ret = FUNC5(wl, CMD_SET_KEYS, cmd, sizeof(*cmd), 0);
	if (ret < 0) {
		FUNC8("could not set ap keys");
		goto out;
	}

out:
	FUNC2(cmd);
	return ret;
}
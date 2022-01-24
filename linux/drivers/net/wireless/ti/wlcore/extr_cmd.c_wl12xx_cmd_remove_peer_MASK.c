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
struct wl12xx_vif {int /*<<< orphan*/  role_id; } ;
struct wl12xx_cmd_remove_peer {int /*<<< orphan*/  role_id; scalar_t__ send_deauth_flag; scalar_t__ reason_opcode; scalar_t__ hlid; } ;
struct wl1271 {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* wait_for_event ) (struct wl1271*,int /*<<< orphan*/ ,int*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_REMOVE_PEER ; 
 int /*<<< orphan*/  DEBUG_CMD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WLCORE_EVENT_PEER_REMOVE_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (struct wl12xx_cmd_remove_peer*) ; 
 struct wl12xx_cmd_remove_peer* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct wl12xx_cmd_remove_peer*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct wl1271*) ; 

int FUNC7(struct wl1271 *wl, struct wl12xx_vif *wlvif,
			   u8 hlid)
{
	struct wl12xx_cmd_remove_peer *cmd;
	int ret;
	bool timeout = false;

	FUNC4(DEBUG_CMD, "cmd remove peer %d", (int)hlid);

	cmd = FUNC1(sizeof(*cmd), GFP_KERNEL);
	if (!cmd) {
		ret = -ENOMEM;
		goto out;
	}

	cmd->hlid = hlid;
	/* We never send a deauth, mac80211 is in charge of this */
	cmd->reason_opcode = 0;
	cmd->send_deauth_flag = 0;
	cmd->role_id = wlvif->role_id;

	ret = FUNC3(wl, CMD_REMOVE_PEER, cmd, sizeof(*cmd), 0);
	if (ret < 0) {
		FUNC5("failed to initiate cmd remove peer");
		goto out_free;
	}

	ret = wl->ops->wait_for_event(wl,
				      WLCORE_EVENT_PEER_REMOVE_COMPLETE,
				      &timeout);

	/*
	 * We are ok with a timeout here. The event is sometimes not sent
	 * due to a firmware bug. In case of another error (like SDIO timeout)
	 * queue a recovery.
	 */
	if (ret)
		FUNC6(wl);

out_free:
	FUNC0(cmd);

out:
	return ret;
}
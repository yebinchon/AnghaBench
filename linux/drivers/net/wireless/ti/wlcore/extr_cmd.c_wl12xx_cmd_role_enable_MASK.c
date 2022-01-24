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
typedef  scalar_t__ u8 ;
struct wl12xx_cmd_role_enable {scalar_t__ role_id; scalar_t__ role_type; int /*<<< orphan*/  mac_address; } ;
struct wl1271 {int /*<<< orphan*/  roles_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ROLE_ENABLE ; 
 int /*<<< orphan*/  DEBUG_CMD ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ WL12XX_INVALID_ROLE_ID ; 
 scalar_t__ WL12XX_MAX_ROLES ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct wl12xx_cmd_role_enable*) ; 
 struct wl12xx_cmd_role_enable* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct wl1271*,int /*<<< orphan*/ ,struct wl12xx_cmd_role_enable*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int FUNC9(struct wl1271 *wl, u8 *addr, u8 role_type,
			   u8 *role_id)
{
	struct wl12xx_cmd_role_enable *cmd;
	int ret;

	FUNC7(DEBUG_CMD, "cmd role enable");

	if (FUNC0(*role_id != WL12XX_INVALID_ROLE_ID))
		return -EBUSY;

	cmd = FUNC4(sizeof(*cmd), GFP_KERNEL);
	if (!cmd) {
		ret = -ENOMEM;
		goto out;
	}

	/* get role id */
	cmd->role_id = FUNC2(wl->roles_map, WL12XX_MAX_ROLES);
	if (cmd->role_id >= WL12XX_MAX_ROLES) {
		ret = -EBUSY;
		goto out_free;
	}

	FUNC5(cmd->mac_address, addr, ETH_ALEN);
	cmd->role_type = role_type;

	ret = FUNC6(wl, CMD_ROLE_ENABLE, cmd, sizeof(*cmd), 0);
	if (ret < 0) {
		FUNC8("failed to initiate cmd role enable");
		goto out_free;
	}

	FUNC1(cmd->role_id, wl->roles_map);
	*role_id = cmd->role_id;

out_free:
	FUNC3(cmd);

out:
	return ret;
}
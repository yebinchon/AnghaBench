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
struct wl1271_cmd_header {int dummy; } ;
struct wl1271 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SMART_CONFIG_STOP ; 
 int /*<<< orphan*/  DEBUG_CMD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct wl1271_cmd_header*) ; 
 struct wl1271_cmd_header* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,struct wl1271_cmd_header*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(struct wl1271 *wl)
{
	struct wl1271_cmd_header *cmd;
	int ret = 0;

	FUNC3(DEBUG_CMD, "cmd smart config stop");

	cmd = FUNC1(sizeof(*cmd), GFP_KERNEL);
	if (!cmd) {
		ret = -ENOMEM;
		goto out;
	}

	ret = FUNC2(wl, CMD_SMART_CONFIG_STOP, cmd, sizeof(*cmd), 0);
	if (ret < 0) {
		FUNC4("failed to send smart config stop command");
		goto out_free;
	}

out_free:
	FUNC0(cmd);
out:
	return ret;
}
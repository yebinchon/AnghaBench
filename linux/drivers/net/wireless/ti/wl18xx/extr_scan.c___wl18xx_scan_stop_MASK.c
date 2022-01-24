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
struct wl18xx_cmd_scan_stop {int /*<<< orphan*/  scan_type; int /*<<< orphan*/  role_id; } ;
struct wl12xx_vif {int /*<<< orphan*/  role_id; } ;
struct wl1271 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_STOP_SCAN ; 
 int /*<<< orphan*/  DEBUG_CMD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct wl18xx_cmd_scan_stop*) ; 
 struct wl18xx_cmd_scan_stop* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,struct wl18xx_cmd_scan_stop*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct wl1271 *wl, struct wl12xx_vif *wlvif,
			       u8 scan_type)
{
	struct wl18xx_cmd_scan_stop *stop;
	int ret;

	FUNC3(DEBUG_CMD, "cmd periodic scan stop");

	stop = FUNC1(sizeof(*stop), GFP_KERNEL);
	if (!stop) {
		FUNC4("failed to alloc memory to send sched scan stop");
		return -ENOMEM;
	}

	stop->role_id = wlvif->role_id;
	stop->scan_type = scan_type;

	ret = FUNC2(wl, CMD_STOP_SCAN, stop, sizeof(*stop), 0);
	if (ret < 0) {
		FUNC4("failed to send sched scan stop command");
		goto out_free;
	}

out_free:
	FUNC0(stop);
	return ret;
}
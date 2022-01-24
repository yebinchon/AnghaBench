#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wl12xx_vif {int /*<<< orphan*/  role_id; } ;
struct TYPE_3__ {int /*<<< orphan*/  ps_poll_threshold; int /*<<< orphan*/  rx_broadcast_in_ps; int /*<<< orphan*/  broadcast_timeout; int /*<<< orphan*/  beacon_rx_timeout; } ;
struct TYPE_4__ {TYPE_1__ conn; } ;
struct wl1271 {TYPE_2__ conf; } ;
struct acx_beacon_broadcast {int /*<<< orphan*/  ps_poll_threshold; int /*<<< orphan*/  rx_broadcast_in_ps; void* broadcast_timeout; void* beacon_rx_timeout; int /*<<< orphan*/  role_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_BCN_DTIM_OPTIONS ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acx_beacon_broadcast*) ; 
 struct acx_beacon_broadcast* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct acx_beacon_broadcast*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
	struct acx_beacon_broadcast *bb;
	int ret;

	FUNC4(DEBUG_ACX, "acx bcn dtim options");

	bb = FUNC2(sizeof(*bb), GFP_KERNEL);
	if (!bb) {
		ret = -ENOMEM;
		goto out;
	}

	bb->role_id = wlvif->role_id;
	bb->beacon_rx_timeout = FUNC0(wl->conf.conn.beacon_rx_timeout);
	bb->broadcast_timeout = FUNC0(wl->conf.conn.broadcast_timeout);
	bb->rx_broadcast_in_ps = wl->conf.conn.rx_broadcast_in_ps;
	bb->ps_poll_threshold = wl->conf.conn.ps_poll_threshold;

	ret = FUNC3(wl, ACX_BCN_DTIM_OPTIONS, bb, sizeof(*bb));
	if (ret < 0) {
		FUNC5("failed to set rx config: %d", ret);
		goto out;
	}

out:
	FUNC1(bb);
	return ret;
}
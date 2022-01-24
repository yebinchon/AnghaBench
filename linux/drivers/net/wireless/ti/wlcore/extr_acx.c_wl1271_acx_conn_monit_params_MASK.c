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
typedef  int /*<<< orphan*/  u32 ;
struct wl12xx_vif {int /*<<< orphan*/  role_id; } ;
struct TYPE_3__ {int /*<<< orphan*/  bss_lose_timeout; int /*<<< orphan*/  synch_fail_thold; } ;
struct TYPE_4__ {TYPE_1__ conn; } ;
struct wl1271 {TYPE_2__ conf; } ;
struct acx_conn_monit_params {void* bss_lose_timeout; void* synch_fail_thold; int /*<<< orphan*/  role_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_CONN_MONIT_DISABLE_VALUE ; 
 int /*<<< orphan*/  ACX_CONN_MONIT_PARAMS ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acx_conn_monit_params*) ; 
 struct acx_conn_monit_params* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct acx_conn_monit_params*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1271 *wl, struct wl12xx_vif *wlvif,
				 bool enable)
{
	struct acx_conn_monit_params *acx;
	u32 threshold = ACX_CONN_MONIT_DISABLE_VALUE;
	u32 timeout = ACX_CONN_MONIT_DISABLE_VALUE;
	int ret;

	FUNC4(DEBUG_ACX, "acx connection monitor parameters: %s",
		     enable ? "enabled" : "disabled");

	acx = FUNC2(sizeof(*acx), GFP_KERNEL);
	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	if (enable) {
		threshold = wl->conf.conn.synch_fail_thold;
		timeout = wl->conf.conn.bss_lose_timeout;
	}

	acx->role_id = wlvif->role_id;
	acx->synch_fail_thold = FUNC0(threshold);
	acx->bss_lose_timeout = FUNC0(timeout);

	ret = FUNC3(wl, ACX_CONN_MONIT_PARAMS,
				   acx, sizeof(*acx));
	if (ret < 0) {
		FUNC5("failed to set connection monitor "
			       "parameters: %d", ret);
		goto out;
	}

out:
	FUNC1(acx);
	return ret;
}
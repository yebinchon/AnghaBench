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
struct TYPE_3__ {int /*<<< orphan*/ * params; } ;
struct TYPE_4__ {TYPE_1__ sg; } ;
struct wl1271 {int /*<<< orphan*/  zone_master_mac_addr; TYPE_2__ conf; } ;
struct acx_time_sync_cfg {int /*<<< orphan*/  zone_mac_addr; int /*<<< orphan*/  sync_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_TIME_SYNC_CFG ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t WL18XX_CONF_SG_TIME_SYNC ; 
 int /*<<< orphan*/  FUNC0 (struct acx_time_sync_cfg*) ; 
 struct acx_time_sync_cfg* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct acx_time_sync_cfg*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1271 *wl)
{
	struct acx_time_sync_cfg *acx;
	int ret;

	FUNC4(DEBUG_ACX, "acx time sync cfg: mode %d, addr: %pM",
		     wl->conf.sg.params[WL18XX_CONF_SG_TIME_SYNC],
		     wl->zone_master_mac_addr);

	acx = FUNC1(sizeof(*acx), GFP_KERNEL);
	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	acx->sync_mode = wl->conf.sg.params[WL18XX_CONF_SG_TIME_SYNC];
	FUNC2(acx->zone_mac_addr, wl->zone_master_mac_addr, ETH_ALEN);

	ret = FUNC3(wl, ACX_TIME_SYNC_CFG,
				   acx, sizeof(*acx));
	if (ret < 0) {
		FUNC5("acx time sync cfg failed: %d", ret);
		goto out;
	}
out:
	FUNC0(acx);
	return ret;
}
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
struct wl1271_acx_ap_max_tx_retry {int /*<<< orphan*/  max_tx_retry; int /*<<< orphan*/  role_id; } ;
struct TYPE_3__ {int /*<<< orphan*/  max_tx_retries; } ;
struct TYPE_4__ {TYPE_1__ tx; } ;
struct wl1271 {TYPE_2__ conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_MAX_TX_FAILURE ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wl1271_acx_ap_max_tx_retry*) ; 
 struct wl1271_acx_ap_max_tx_retry* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct wl1271_acx_ap_max_tx_retry*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
	struct wl1271_acx_ap_max_tx_retry *acx = NULL;
	int ret;

	FUNC4(DEBUG_ACX, "acx ap max tx retry");

	acx = FUNC2(sizeof(*acx), GFP_KERNEL);
	if (!acx)
		return -ENOMEM;

	acx->role_id = wlvif->role_id;
	acx->max_tx_retry = FUNC0(wl->conf.tx.max_tx_retries);

	ret = FUNC3(wl, ACX_MAX_TX_FAILURE, acx, sizeof(*acx));
	if (ret < 0) {
		FUNC5("acx ap max tx retry failed: %d", ret);
		goto out;
	}

out:
	FUNC1(acx);
	return ret;
}
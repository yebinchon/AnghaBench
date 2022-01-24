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
struct wlcore_peer_ht_operation_mode {int /*<<< orphan*/  bandwidth; int /*<<< orphan*/  hlid; } ;
struct wl1271 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_PEER_HT_OPERATION_MODE_CFG ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WLCORE_BANDWIDTH_20MHZ ; 
 int /*<<< orphan*/  WLCORE_BANDWIDTH_40MHZ ; 
 int /*<<< orphan*/  FUNC0 (struct wlcore_peer_ht_operation_mode*) ; 
 struct wlcore_peer_ht_operation_mode* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,struct wlcore_peer_ht_operation_mode*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1271 *wl, u8 hlid, bool wide)
{
	struct wlcore_peer_ht_operation_mode *acx;
	int ret;

	FUNC3(DEBUG_ACX, "acx peer ht operation mode hlid %d bw %d",
		     hlid, wide);

	acx = FUNC1(sizeof(*acx), GFP_KERNEL);
	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	acx->hlid = hlid;
	acx->bandwidth = wide ? WLCORE_BANDWIDTH_40MHZ : WLCORE_BANDWIDTH_20MHZ;

	ret = FUNC2(wl, ACX_PEER_HT_OPERATION_MODE_CFG, acx,
				   sizeof(*acx));

	if (ret < 0) {
		FUNC4("acx peer ht operation mode failed: %d", ret);
		goto out;
	}

out:
	FUNC0(acx);
	return ret;

}
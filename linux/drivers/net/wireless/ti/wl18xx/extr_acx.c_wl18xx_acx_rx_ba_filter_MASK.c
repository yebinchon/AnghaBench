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
typedef  scalar_t__ u32 ;
struct wl18xx_acx_rx_ba_filter {scalar_t__ enable; } ;
struct wl1271 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_RX_BA_FILTER ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct wl18xx_acx_rx_ba_filter*) ; 
 struct wl18xx_acx_rx_ba_filter* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,struct wl18xx_acx_rx_ba_filter*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

int FUNC4(struct wl1271 *wl, bool action)
{
	struct wl18xx_acx_rx_ba_filter *acx;
	int ret = 0;

	acx = FUNC1(sizeof(*acx), GFP_KERNEL);
	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	acx->enable = (u32)action;
	ret = FUNC2(wl, ACX_RX_BA_FILTER, acx, sizeof(*acx));
	if (ret < 0) {
		FUNC3("acx rx ba activity filter setting failed: %d",
			       ret);
		goto out;
	}

out:
	FUNC0(acx);
	return ret;
}
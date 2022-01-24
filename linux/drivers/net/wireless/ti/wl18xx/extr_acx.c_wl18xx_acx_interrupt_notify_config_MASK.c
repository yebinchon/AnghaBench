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
struct wl18xx_acx_interrupt_notify {int enable; } ;
struct wl1271 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_INTERRUPT_NOTIFY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct wl18xx_acx_interrupt_notify*) ; 
 struct wl18xx_acx_interrupt_notify* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,struct wl18xx_acx_interrupt_notify*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

int FUNC4(struct wl1271 *wl,
				       bool action)
{
	struct wl18xx_acx_interrupt_notify *acx;
	int ret = 0;

	acx = FUNC1(sizeof(*acx), GFP_KERNEL);
	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	acx->enable = action;
	ret = FUNC2(wl, ACX_INTERRUPT_NOTIFY, acx, sizeof(*acx));
	if (ret < 0) {
		FUNC3("acx interrupt notify setting failed: %d", ret);
		goto out;
	}

out:
	FUNC0(acx);
	return ret;
}
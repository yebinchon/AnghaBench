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
struct wl12xx_vif {scalar_t__ bss_type; int /*<<< orphan*/  flags; int /*<<< orphan*/  basic_rate_set; int /*<<< orphan*/  basic_rate; } ;
struct wl1271 {int dummy; } ;

/* Variables and functions */
 scalar_t__ BSS_TYPE_STA_BSS ; 
 int /*<<< orphan*/  WLVIF_FLAG_IN_USE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct wl1271*,struct wl12xx_vif*) ; 
 int /*<<< orphan*/  FUNC3 (struct wl1271*,struct wl12xx_vif*) ; 
 int /*<<< orphan*/  FUNC4 (struct wl1271*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct wl1271*,struct wl12xx_vif*) ; 

__attribute__((used)) static int FUNC6(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
	int ret;

	/* revert back to minimum rates for the current band */
	FUNC3(wl, wlvif);
	wlvif->basic_rate = FUNC4(wl, wlvif->basic_rate_set);

	ret = FUNC2(wl, wlvif);
	if (ret < 0)
		return ret;

	if (wlvif->bss_type == BSS_TYPE_STA_BSS &&
	    FUNC1(WLVIF_FLAG_IN_USE, &wlvif->flags)) {
		ret = FUNC5(wl, wlvif);
		if (ret < 0)
			return ret;
	}

	FUNC0(WLVIF_FLAG_IN_USE, &wlvif->flags);
	return 0;
}
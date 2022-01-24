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
struct wl12xx_vif {int dummy; } ;
struct wl1271 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct wl1271*) ; 
 int FUNC1 (struct wl1271*,struct wl12xx_vif*) ; 
 int FUNC2 (struct wl1271*,struct wl12xx_vif*) ; 

int FUNC3(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
	int ret;

	/* PS config */
	ret = FUNC2(wl, wlvif);
	if (ret < 0)
		return ret;

	/* FM WLAN coexistence */
	ret = FUNC0(wl);
	if (ret < 0)
		return ret;

	ret = FUNC1(wl, wlvif);
	if (ret < 0)
		return ret;

	return 0;
}
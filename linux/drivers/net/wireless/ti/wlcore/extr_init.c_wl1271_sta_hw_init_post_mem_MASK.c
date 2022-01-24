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
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct wl1271*,struct wl12xx_vif*,int) ; 
 struct wl12xx_vif* FUNC1 (struct ieee80211_vif*) ; 

__attribute__((used)) static int FUNC2(struct wl1271 *wl,
				       struct ieee80211_vif *vif)
{
	struct wl12xx_vif *wlvif = FUNC1(vif);
	int ret;

	/* disable the keep-alive feature */
	ret = FUNC0(wl, wlvif, false);
	if (ret < 0)
		return ret;

	return 0;
}
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
struct wl12xx_vif {int /*<<< orphan*/  flags; } ;
struct wl1271 {int dummy; } ;
struct cfg80211_wowlan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLVIF_FLAG_AP_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct wl1271*,struct wl12xx_vif*,int) ; 
 int FUNC2 (struct wl1271*,struct cfg80211_wowlan*) ; 

__attribute__((used)) static int FUNC3(struct wl1271 *wl,
					struct wl12xx_vif *wlvif,
					struct cfg80211_wowlan *wow)
{
	int ret = 0;

	if (!FUNC0(WLVIF_FLAG_AP_STARTED, &wlvif->flags))
		goto out;

	ret = FUNC1(wl, wlvif, true);
	if (ret < 0)
		goto out;

	ret = FUNC2(wl, wow);
	if (ret < 0)
		goto out;

out:
	return ret;

}
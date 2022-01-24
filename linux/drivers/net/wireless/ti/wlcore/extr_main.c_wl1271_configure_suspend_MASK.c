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
struct wl12xx_vif {scalar_t__ bss_type; } ;
struct wl1271 {int dummy; } ;
struct cfg80211_wowlan {int dummy; } ;

/* Variables and functions */
 scalar_t__ BSS_TYPE_AP_BSS ; 
 scalar_t__ BSS_TYPE_STA_BSS ; 
 int FUNC0 (struct wl1271*,struct wl12xx_vif*,struct cfg80211_wowlan*) ; 
 int FUNC1 (struct wl1271*,struct wl12xx_vif*,struct cfg80211_wowlan*) ; 

__attribute__((used)) static int FUNC2(struct wl1271 *wl,
				    struct wl12xx_vif *wlvif,
				    struct cfg80211_wowlan *wow)
{
	if (wlvif->bss_type == BSS_TYPE_STA_BSS)
		return FUNC1(wl, wlvif, wow);
	if (wlvif->bss_type == BSS_TYPE_AP_BSS)
		return FUNC0(wl, wlvif, wow);
	return 0;
}
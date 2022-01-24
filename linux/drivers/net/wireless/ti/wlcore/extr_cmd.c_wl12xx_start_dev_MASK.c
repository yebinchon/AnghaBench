#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wl12xx_vif {scalar_t__ bss_type; int /*<<< orphan*/  dev_role_id; } ;
struct wl1271 {int dummy; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 scalar_t__ BSS_TYPE_IBSS ; 
 scalar_t__ BSS_TYPE_STA_BSS ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  WL1271_ROLE_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct wl1271*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct wl1271*,struct wl12xx_vif*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wl1271*,struct wl12xx_vif*) ; 
 int FUNC5 (struct wl1271*,struct wl12xx_vif*,int /*<<< orphan*/ ,int,int) ; 
 TYPE_1__* FUNC6 (struct wl12xx_vif*) ; 
 int /*<<< orphan*/  FUNC7 (struct wl12xx_vif*) ; 

int FUNC8(struct wl1271 *wl, struct wl12xx_vif *wlvif,
		     enum nl80211_band band, int channel)
{
	int ret;

	if (FUNC0(!(wlvif->bss_type == BSS_TYPE_STA_BSS ||
		      wlvif->bss_type == BSS_TYPE_IBSS)))
		return -EINVAL;

	/* the dev role is already started for p2p mgmt interfaces */
	if (!FUNC7(wlvif)) {
		ret = FUNC2(wl,
					     FUNC6(wlvif)->addr,
					     WL1271_ROLE_DEVICE,
					     &wlvif->dev_role_id);
		if (ret < 0)
			goto out;
	}

	ret = FUNC3(wl, wlvif, band, channel);
	if (ret < 0)
		goto out_disable;

	ret = FUNC5(wl, wlvif, wlvif->dev_role_id, band, channel);
	if (ret < 0)
		goto out_stop;

	return 0;

out_stop:
	FUNC4(wl, wlvif);
out_disable:
	if (!FUNC7(wlvif))
		FUNC1(wl, &wlvif->dev_role_id);
out:
	return ret;
}
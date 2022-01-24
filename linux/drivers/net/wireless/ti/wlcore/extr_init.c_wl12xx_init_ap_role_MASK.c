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
struct wl12xx_vif {int /*<<< orphan*/  power_level; } ;
struct wl1271 {scalar_t__ radar_debug_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLCORE_CFG_FEATURE_RADAR_DEBUG ; 
 int FUNC0 (struct wl1271*,struct wl12xx_vif*) ; 
 int FUNC1 (struct wl1271*,struct wl12xx_vif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wl1271*,struct wl12xx_vif*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
	int ret;

	ret = FUNC0(wl, wlvif);
	if (ret < 0)
		return ret;

	/* initialize Tx power */
	ret = FUNC1(wl, wlvif, wlvif->power_level);
	if (ret < 0)
		return ret;

	if (wl->radar_debug_mode)
		FUNC2(wl, wlvif,
				       WLCORE_CFG_FEATURE_RADAR_DEBUG,
				       wl->radar_debug_mode, 0);

	return 0;
}
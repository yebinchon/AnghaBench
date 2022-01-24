#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wl12xx_vif {int dummy; } ;
struct wl1271 {TYPE_2__* hw; } ;
struct TYPE_4__ {TYPE_1__* wiphy; } ;
struct TYPE_3__ {int /*<<< orphan*/  rts_threshold; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_SLOT_TIME ; 
 int FUNC0 (struct wl1271*,struct wl12xx_vif*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct wl1271*,struct wl12xx_vif*) ; 
 int FUNC2 (struct wl1271*,struct wl12xx_vif*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct wl1271 *wl,
					    struct wl12xx_vif *wlvif)
{
	int ret;

	ret = FUNC2(wl, wlvif, DEFAULT_SLOT_TIME);
	if (ret < 0)
		return ret;

	ret = FUNC1(wl, wlvif);
	if (ret < 0)
		return ret;

	ret = FUNC0(wl, wlvif, wl->hw->wiphy->rts_threshold);
	if (ret < 0)
		return ret;

	return 0;
}
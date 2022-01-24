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
struct wl12xx_vif {scalar_t__ bss_type; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {scalar_t__ suspend_wake_up_event; scalar_t__ wake_up_event; scalar_t__ suspend_listen_interval; scalar_t__ listen_interval; } ;
struct TYPE_4__ {TYPE_1__ conn; } ;
struct wl1271 {TYPE_2__ conf; } ;

/* Variables and functions */
 scalar_t__ BSS_TYPE_AP_BSS ; 
 scalar_t__ BSS_TYPE_STA_BSS ; 
 int /*<<< orphan*/  WLVIF_FLAG_AP_STARTED ; 
 int /*<<< orphan*/  WLVIF_FLAG_STA_ASSOCIATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct wl1271*,struct wl12xx_vif*,int) ; 
 int FUNC2 (struct wl1271*,struct wl12xx_vif*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct wl1271*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static void FUNC5(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
	int ret = 0;
	bool is_ap = wlvif->bss_type == BSS_TYPE_AP_BSS;
	bool is_sta = wlvif->bss_type == BSS_TYPE_STA_BSS;

	if ((!is_ap) && (!is_sta))
		return;

	if ((is_sta && !FUNC0(WLVIF_FLAG_STA_ASSOCIATED, &wlvif->flags)) ||
	    (is_ap && !FUNC0(WLVIF_FLAG_AP_STARTED, &wlvif->flags)))
		return;

	FUNC3(wl, NULL);

	if (is_sta) {
		if ((wl->conf.conn.suspend_wake_up_event ==
		     wl->conf.conn.wake_up_event) &&
		    (wl->conf.conn.suspend_listen_interval ==
		     wl->conf.conn.listen_interval))
			return;

		ret = FUNC2(wl, wlvif,
				    wl->conf.conn.wake_up_event,
				    wl->conf.conn.listen_interval);

		if (ret < 0)
			FUNC4("resume: wake up conditions failed: %d",
				     ret);

	} else if (is_ap) {
		ret = FUNC1(wl, wlvif, false);
	}
}
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
struct wl12xx_vif {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {scalar_t__ suspend_wake_up_event; scalar_t__ wake_up_event; scalar_t__ suspend_listen_interval; scalar_t__ listen_interval; } ;
struct TYPE_4__ {TYPE_1__ conn; } ;
struct wl1271 {TYPE_2__ conf; } ;
struct cfg80211_wowlan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLVIF_FLAG_STA_ASSOCIATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct wl1271*,struct wl12xx_vif*,scalar_t__,scalar_t__) ; 
 int FUNC2 (struct wl1271*,struct cfg80211_wowlan*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static int FUNC4(struct wl1271 *wl,
					struct wl12xx_vif *wlvif,
					struct cfg80211_wowlan *wow)
{
	int ret = 0;

	if (!FUNC0(WLVIF_FLAG_STA_ASSOCIATED, &wlvif->flags))
		goto out;

	ret = FUNC2(wl, wow);
	if (ret < 0)
		goto out;

	if ((wl->conf.conn.suspend_wake_up_event ==
	     wl->conf.conn.wake_up_event) &&
	    (wl->conf.conn.suspend_listen_interval ==
	     wl->conf.conn.listen_interval))
		goto out;

	ret = FUNC1(wl, wlvif,
				    wl->conf.conn.suspend_wake_up_event,
				    wl->conf.conn.suspend_listen_interval);

	if (ret < 0)
		FUNC3("suspend: set wake up conditions failed: %d", ret);
out:
	return ret;

}
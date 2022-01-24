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
typedef  void* u8 ;
struct wl12xx_vif {int /*<<< orphan*/  role_id; } ;
struct wl1271 {int dummy; } ;
struct acx_wake_up_condition {void* listen_interval; void* wake_up_event; int /*<<< orphan*/  role_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_WAKE_UP_CONDITIONS ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct acx_wake_up_condition*) ; 
 struct acx_wake_up_condition* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,struct acx_wake_up_condition*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,void*,void*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1271 *wl, struct wl12xx_vif *wlvif,
				  u8 wake_up_event, u8 listen_interval)
{
	struct acx_wake_up_condition *wake_up;
	int ret;

	FUNC3(DEBUG_ACX, "acx wake up conditions (wake_up_event %d listen_interval %d)",
		     wake_up_event, listen_interval);

	wake_up = FUNC1(sizeof(*wake_up), GFP_KERNEL);
	if (!wake_up) {
		ret = -ENOMEM;
		goto out;
	}

	wake_up->role_id = wlvif->role_id;
	wake_up->wake_up_event = wake_up_event;
	wake_up->listen_interval = listen_interval;

	ret = FUNC2(wl, ACX_WAKE_UP_CONDITIONS,
				   wake_up, sizeof(*wake_up));
	if (ret < 0) {
		FUNC4("could not set wake up conditions: %d", ret);
		goto out;
	}

out:
	FUNC0(wake_up);
	return ret;
}
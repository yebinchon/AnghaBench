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
struct wl1271 {int /*<<< orphan*/  event_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_EVENT ; 
 int FUNC0 (struct wl1271*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int FUNC2(struct wl1271 *wl)
{
	int ret;

	FUNC1(DEBUG_EVENT, "unmasking event_mask 0x%x", wl->event_mask);
	ret = FUNC0(wl, ~(wl->event_mask));
	if (ret < 0)
		return ret;

	return 0;
}
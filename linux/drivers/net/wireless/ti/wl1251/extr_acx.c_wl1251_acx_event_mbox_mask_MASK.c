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
typedef  int /*<<< orphan*/  u32 ;
struct wl1251 {int dummy; } ;
struct acx_event_mask {int high_event_mask; int /*<<< orphan*/  event_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_EVENT_MBOX_MASK ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct acx_event_mask*) ; 
 struct acx_event_mask* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ,struct acx_event_mask*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1251 *wl, u32 event_mask)
{
	struct acx_event_mask *mask;
	int ret;

	FUNC3(DEBUG_ACX, "acx event mbox mask");

	mask = FUNC1(sizeof(*mask), GFP_KERNEL);
	if (!mask)
		return -ENOMEM;

	/* high event mask is unused */
	mask->high_event_mask = 0xffffffff;

	mask->event_mask = event_mask;

	ret = FUNC2(wl, ACX_EVENT_MBOX_MASK,
				   mask, sizeof(*mask));
	if (ret < 0) {
		FUNC4("failed to set acx_event_mbox_mask: %d", ret);
		goto out;
	}

out:
	FUNC0(mask);
	return ret;
}
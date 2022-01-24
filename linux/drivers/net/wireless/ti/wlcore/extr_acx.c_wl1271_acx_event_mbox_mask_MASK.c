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
typedef  int u32 ;
struct wl1271 {int dummy; } ;
struct acx_event_mask {void* event_mask; void* high_event_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_EVENT_MBOX_MASK ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct acx_event_mask*) ; 
 struct acx_event_mask* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct acx_event_mask*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1271 *wl, u32 event_mask)
{
	struct acx_event_mask *mask;
	int ret;

	FUNC4(DEBUG_ACX, "acx event mbox mask");

	mask = FUNC2(sizeof(*mask), GFP_KERNEL);
	if (!mask) {
		ret = -ENOMEM;
		goto out;
	}

	/* high event mask is unused */
	mask->high_event_mask = FUNC0(0xffffffff);
	mask->event_mask = FUNC0(event_mask);

	ret = FUNC3(wl, ACX_EVENT_MBOX_MASK,
				   mask, sizeof(*mask));
	if (ret < 0) {
		FUNC5("failed to set acx_event_mbox_mask: %d", ret);
		goto out;
	}

out:
	FUNC1(mask);
	return ret;
}
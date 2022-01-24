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
typedef  scalar_t__ u16 ;
struct wl1271 {int /*<<< orphan*/  dev; int /*<<< orphan*/ * mbox_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_CMD ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  WL1271_EVENT_TIMEOUT ; 
 scalar_t__ WL1271_WAIT_EVENT_FAST_POLL_COUNT ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (int,int) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC10 (struct wl1271*,int /*<<< orphan*/ ,int*,int,int) ; 

int FUNC11(struct wl1271 *wl,
					 u32 mask, bool *timeout)
{
	u32 *events_vector;
	u32 event;
	unsigned long timeout_time;
	u16 poll_count = 0;
	int ret = 0;

	*timeout = false;

	events_vector = FUNC1(sizeof(*events_vector), GFP_KERNEL | GFP_DMA);
	if (!events_vector)
		return -ENOMEM;

	timeout_time = jiffies + FUNC2(WL1271_EVENT_TIMEOUT);

	ret = FUNC3(wl->dev);
	if (ret < 0) {
		FUNC6(wl->dev);
		goto free_vector;
	}

	do {
		if (FUNC7(jiffies, timeout_time)) {
			FUNC9(DEBUG_CMD, "timeout waiting for event %d",
				     (int)mask);
			*timeout = true;
			goto out;
		}

		poll_count++;
		if (poll_count < WL1271_WAIT_EVENT_FAST_POLL_COUNT)
			FUNC8(50, 51);
		else
			FUNC8(1000, 5000);

		/* read from both event fields */
		ret = FUNC10(wl, wl->mbox_ptr[0], events_vector,
				  sizeof(*events_vector), false);
		if (ret < 0)
			goto out;

		event = *events_vector & mask;

		ret = FUNC10(wl, wl->mbox_ptr[1], events_vector,
				  sizeof(*events_vector), false);
		if (ret < 0)
			goto out;

		event |= *events_vector & mask;
	} while (!event);

out:
	FUNC4(wl->dev);
	FUNC5(wl->dev);
free_vector:
	FUNC0(events_vector);
	return ret;
}
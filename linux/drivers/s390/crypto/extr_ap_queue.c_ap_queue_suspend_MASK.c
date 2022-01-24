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
struct ap_queue {int /*<<< orphan*/  lock; int /*<<< orphan*/  state; } ;
struct ap_device {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  AP_EVENT_POLL ; 
 int /*<<< orphan*/  AP_STATE_BORKED ; 
 int /*<<< orphan*/  AP_STATE_SUSPEND_WAIT ; 
 scalar_t__ AP_WAIT_NONE ; 
 scalar_t__ FUNC0 (struct ap_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ap_queue* FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ap_device *ap_dev)
{
	struct ap_queue *aq = FUNC3(&ap_dev->device);

	/* Poll on the device until all requests are finished. */
	FUNC1(&aq->lock);
	aq->state = AP_STATE_SUSPEND_WAIT;
	while (FUNC0(aq, AP_EVENT_POLL) != AP_WAIT_NONE)
		;
	aq->state = AP_STATE_BORKED;
	FUNC2(&aq->lock);
}
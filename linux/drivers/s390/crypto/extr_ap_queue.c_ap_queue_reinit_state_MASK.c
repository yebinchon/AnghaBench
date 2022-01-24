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

/* Variables and functions */
 int /*<<< orphan*/  AP_EVENT_POLL ; 
 int /*<<< orphan*/  AP_STATE_RESET_START ; 
 int /*<<< orphan*/  FUNC0 (struct ap_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ap_queue *aq)
{
	FUNC2(&aq->lock);
	aq->state = AP_STATE_RESET_START;
	FUNC1(FUNC0(aq, AP_EVENT_POLL));
	FUNC3(&aq->lock);
}
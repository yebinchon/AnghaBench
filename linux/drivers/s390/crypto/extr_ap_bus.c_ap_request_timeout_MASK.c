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
struct timer_list {int dummy; } ;
struct ap_queue {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  AP_EVENT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct ap_queue*,int /*<<< orphan*/ ) ; 
 scalar_t__ ap_suspend_flag ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ap_queue* aq ; 
 struct ap_queue* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timeout ; 

void FUNC5(struct timer_list *t)
{
	struct ap_queue *aq = FUNC2(aq, t, timeout);

	if (ap_suspend_flag)
		return;
	FUNC3(&aq->lock);
	FUNC1(FUNC0(aq, AP_EVENT_TIMEOUT));
	FUNC4(&aq->lock);
}
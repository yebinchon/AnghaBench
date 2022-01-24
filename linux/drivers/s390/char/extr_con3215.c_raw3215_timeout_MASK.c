#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct raw3215_info {int flags; int /*<<< orphan*/  cdev; TYPE_1__ timer; scalar_t__ queued_write; scalar_t__ queued_read; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 scalar_t__ RAW3215_TIMEOUT ; 
 int RAW3215_TIMER_RUNS ; 
 int RAW3215_WORKING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct raw3215_info* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 struct raw3215_info* raw ; 
 int /*<<< orphan*/  FUNC3 (struct raw3215_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct raw3215_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct timer_list *t)
{
	struct raw3215_info *raw = FUNC1(raw, t, timer);
	unsigned long flags;

	FUNC5(FUNC2(raw->cdev), flags);
	raw->flags &= ~RAW3215_TIMER_RUNS;
	if (!FUNC7(&raw->port)) {
		FUNC3(raw);
		FUNC4(raw);
		if ((raw->queued_read || raw->queued_write) &&
		    !(raw->flags & RAW3215_WORKING) &&
		    !(raw->flags & RAW3215_TIMER_RUNS)) {
			raw->timer.expires = RAW3215_TIMEOUT + jiffies;
			FUNC0(&raw->timer);
			raw->flags |= RAW3215_TIMER_RUNS;
		}
	}
	FUNC6(FUNC2(raw->cdev), flags);
}
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
struct TYPE_4__ {scalar_t__ expires; } ;
struct raw3215_info {int flags; TYPE_2__ timer; TYPE_1__* queued_write; int /*<<< orphan*/ * queued_read; int /*<<< orphan*/  port; } ;
struct TYPE_3__ {scalar_t__ delayable; } ;

/* Variables and functions */
 int RAW3215_FLUSHING ; 
 scalar_t__ RAW3215_TIMEOUT ; 
 int RAW3215_TIMER_RUNS ; 
 int RAW3215_WORKING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct raw3215_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct raw3215_info *raw)
{
	if (!FUNC2(&raw->port) || FUNC3(&raw->port))
		return;
	if (raw->queued_read != NULL)
		FUNC1(raw);
	else if (raw->queued_write != NULL) {
		if ((raw->queued_write->delayable == 0) ||
		    (raw->flags & RAW3215_FLUSHING)) {
			/* execute write requests bigger than minimum size */
			FUNC1(raw);
		}
	}
	if ((raw->queued_read || raw->queued_write) &&
	    !(raw->flags & RAW3215_WORKING) &&
	    !(raw->flags & RAW3215_TIMER_RUNS)) {
		raw->timer.expires = RAW3215_TIMEOUT + jiffies;
		FUNC0(&raw->timer);
		raw->flags |= RAW3215_TIMER_RUNS;
	}
}
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
struct cardstate {int channels; int /*<<< orphan*/  lock; TYPE_1__* driver; struct bc_state* bcs; } ;
struct bc_state {int busy; int /*<<< orphan*/  use_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

struct bc_state *FUNC5(struct cardstate *cs)
{
	unsigned long flags;
	int i;

	FUNC2(&cs->lock, flags);
	if (!FUNC4(cs->driver->owner)) {
		FUNC0(DEBUG_CHANNEL,
			"could not get module for allocating channel");
		FUNC3(&cs->lock, flags);
		return NULL;
	}
	for (i = 0; i < cs->channels; ++i)
		if (!cs->bcs[i].use_count) {
			++cs->bcs[i].use_count;
			cs->bcs[i].busy = 1;
			FUNC3(&cs->lock, flags);
			FUNC0(DEBUG_CHANNEL, "allocated channel %d", i);
			return cs->bcs + i;
		}
	FUNC1(cs->driver->owner);
	FUNC3(&cs->lock, flags);
	FUNC0(DEBUG_CHANNEL, "no free channel");
	return NULL;
}
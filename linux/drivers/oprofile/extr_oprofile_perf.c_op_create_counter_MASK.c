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
struct perf_event {scalar_t__ state; } ;
struct TYPE_2__ {int /*<<< orphan*/  attr; int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (struct perf_event*) ; 
 scalar_t__ PERF_EVENT_STATE_ACTIVE ; 
 int FUNC1 (struct perf_event*) ; 
 TYPE_1__* counter_config ; 
 int /*<<< orphan*/  op_overflow_handler ; 
 struct perf_event** FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct perf_event* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*) ; 
 int /*<<< orphan*/  perf_events ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 

__attribute__((used)) static int FUNC6(int cpu, int event)
{
	struct perf_event *pevent;

	if (!counter_config[event].enabled || FUNC2(perf_events, cpu)[event])
		return 0;

	pevent = FUNC3(&counter_config[event].attr,
						  cpu, NULL,
						  op_overflow_handler, NULL);

	if (FUNC0(pevent))
		return FUNC1(pevent);

	if (pevent->state != PERF_EVENT_STATE_ACTIVE) {
		FUNC4(pevent);
		FUNC5("oprofile: failed to enable event %d "
				"on CPU %d\n", event, cpu);
		return -EBUSY;
	}

	FUNC2(perf_events, cpu)[event] = pevent;

	return 0;
}
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
struct pt_regs {int dummy; } ;
struct perf_sample_data {int dummy; } ;
struct perf_event {int dummy; } ;

/* Variables and functions */
 int num_counters ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*,int) ; 
 struct perf_event** FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  perf_events ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct perf_event *event,
			struct perf_sample_data *data, struct pt_regs *regs)
{
	int id;
	u32 cpu = FUNC3();

	for (id = 0; id < num_counters; ++id)
		if (FUNC1(perf_events, cpu)[id] == event)
			break;

	if (id != num_counters)
		FUNC0(regs, id);
	else
		FUNC2("oprofile: ignoring spurious overflow "
				"on cpu %u\n", cpu);
}
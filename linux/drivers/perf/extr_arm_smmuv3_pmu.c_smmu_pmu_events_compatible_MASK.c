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
struct perf_event {scalar_t__ pmu; } ;
struct TYPE_2__ {scalar_t__ global_filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_event*,struct perf_event*) ; 
 TYPE_1__* FUNC1 (scalar_t__) ; 

__attribute__((used)) static bool FUNC2(struct perf_event *curr,
				       struct perf_event *new)
{
	if (new->pmu != curr->pmu)
		return false;

	if (FUNC1(new->pmu)->global_filter &&
	    !FUNC0(curr, new))
		return false;

	return true;
}
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
struct perf_event {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct perf_event*) ; 
 scalar_t__ FUNC1 (struct perf_event*) ; 
 scalar_t__ FUNC2 (struct perf_event*) ; 

__attribute__((used)) static bool FUNC3(struct perf_event *curr,
					 struct perf_event *new)
{
	if (FUNC0(new) != FUNC0(curr))
		return false;

	if (!FUNC0(new))
		return true;

	return FUNC1(new) == FUNC1(curr) &&
	       FUNC2(new) == FUNC2(curr);
}
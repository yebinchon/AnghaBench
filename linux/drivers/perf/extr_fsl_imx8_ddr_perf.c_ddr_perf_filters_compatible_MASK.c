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
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 

__attribute__((used)) static bool FUNC2(struct perf_event *a,
					struct perf_event *b)
{
	if (!FUNC1(a))
		return true;
	if (!FUNC1(b))
		return true;
	return FUNC0(a) == FUNC0(b);
}
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
struct evtchn_set_priority {unsigned int priority; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVTCHNOP_set_priority ; 
 int FUNC0 (int /*<<< orphan*/ ,struct evtchn_set_priority*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 

int FUNC2(unsigned irq, unsigned priority)
{
	struct evtchn_set_priority set_priority;

	set_priority.port = FUNC1(irq);
	set_priority.priority = priority;

	return FUNC0(EVTCHNOP_set_priority,
					   &set_priority);
}
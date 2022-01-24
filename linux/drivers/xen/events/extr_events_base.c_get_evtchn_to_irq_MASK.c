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

/* Variables and functions */
 size_t FUNC0 (unsigned int) ; 
 size_t FUNC1 (unsigned int) ; 
 int** evtchn_to_irq ; 
 unsigned int FUNC2 () ; 

int FUNC3(unsigned evtchn)
{
	if (evtchn >= FUNC2())
		return -1;
	if (evtchn_to_irq[FUNC1(evtchn)] == NULL)
		return -1;
	return evtchn_to_irq[FUNC1(evtchn)][FUNC0(evtchn)];
}
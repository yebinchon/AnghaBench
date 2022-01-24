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
struct remote_event {int fired; scalar_t__ armed; } ;

/* Variables and functions */
 scalar_t__ BELL2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ g_regs ; 
 int /*<<< orphan*/  sy ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC3(struct remote_event *event)
{
	FUNC1();

	event->fired = 1;

	FUNC0(sy);         /* data barrier operation */

	if (event->armed)
		FUNC2(0, g_regs + BELL2); /* trigger vc interrupt */
}
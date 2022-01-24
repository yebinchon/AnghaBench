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
struct TYPE_2__ {scalar_t__ irq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* controller ; 
 int /*<<< orphan*/  cpci_thread ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  event_thread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  poll_thread ; 
 scalar_t__ thread_finished ; 

__attribute__((used)) static int
FUNC4(void)
{
	if (controller->irq)
		cpci_thread = FUNC3(event_thread, NULL, "cpci_hp_eventd");
	else
		cpci_thread = FUNC3(poll_thread, NULL, "cpci_hp_polld");
	if (FUNC0(cpci_thread)) {
		FUNC2("Can't start up our thread");
		return FUNC1(cpci_thread);
	}
	thread_finished = 0;
	return 0;
}
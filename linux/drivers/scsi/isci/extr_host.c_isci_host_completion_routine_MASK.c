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
typedef  scalar_t__ u16 ;
struct isci_host {TYPE_1__* smu_registers; int /*<<< orphan*/  scic_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  interrupt_coalesce_control; } ;

/* Variables and functions */
 scalar_t__ ISCI_COALESCE_BASE ; 
 int /*<<< orphan*/  NUMBER ; 
 scalar_t__ SCI_MAX_PORTS ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  TIMER ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct isci_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct isci_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 

void FUNC7(unsigned long data)
{
	struct isci_host *ihost = (struct isci_host *)data;
	u16 active;

	FUNC4(&ihost->scic_lock);
	FUNC3(ihost);
	FUNC5(&ihost->scic_lock);

	/*
	 * we subtract SCI_MAX_PORTS to account for the number of dummy TCs
	 * issued for hardware issue workaround
	 */
	active = FUNC2(ihost) - SCI_MAX_PORTS;

	/*
	 * the coalesence timeout doubles at each encoding step, so
	 * update it based on the ilog2 value of the outstanding requests
	 */
	FUNC6(FUNC0(NUMBER, active) |
	       FUNC0(TIMER, ISCI_COALESCE_BASE + FUNC1(active)),
	       &ihost->smu_registers->interrupt_coalesce_control);
}
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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  OCTEON_IRQ_TIMER1 ; 
 int /*<<< orphan*/  cvm_oct_device ; 
 int /*<<< orphan*/  cvm_oct_tx_cleanup_watchdog ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
	int i;

	/* Disable the interrupt.  */
	FUNC1(FUNC0(1), 0);
	/* Register an IRQ handler to receive CIU_TIMX(1) interrupts */
	i = FUNC3(OCTEON_IRQ_TIMER1,
			cvm_oct_tx_cleanup_watchdog, 0,
			"Ethernet", cvm_oct_device);

	if (i)
		FUNC2("Could not acquire Ethernet IRQ %d\n", OCTEON_IRQ_TIMER1);
}
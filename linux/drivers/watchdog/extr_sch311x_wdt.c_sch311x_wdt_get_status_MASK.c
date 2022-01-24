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
struct TYPE_2__ {int /*<<< orphan*/  io_lock; scalar_t__ runtime_reg; } ;

/* Variables and functions */
 int WDIOF_CARDRESET ; 
 scalar_t__ WDT_CTRL ; 
 unsigned char FUNC0 (scalar_t__) ; 
 TYPE_1__ sch311x_wdt_data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(int *status)
{
	unsigned char new_status;

	*status = 0;

	FUNC1(&sch311x_wdt_data.io_lock);

	/* -- Watchdog timer control --
	 * Bit 0   Status Bit: 0 = Timer counting, 1 = Timeout occurred
	 * Bit 1   Reserved
	 * Bit 2   Force Timeout: 1 = Forces WD timeout event (self-cleaning)
	 * Bit 3   P20 Force Timeout enabled:
	 *          0 = P20 activity does not generate the WD timeout event
	 *          1 = P20 Allows rising edge of P20, from the keyboard
	 *              controller, to force the WD timeout event.
	 * Bit 4-7 Reserved
	 */
	new_status = FUNC0(sch311x_wdt_data.runtime_reg + WDT_CTRL);
	if (new_status & 0x01)
		*status |= WDIOF_CARDRESET;

	FUNC2(&sch311x_wdt_data.io_lock);
}
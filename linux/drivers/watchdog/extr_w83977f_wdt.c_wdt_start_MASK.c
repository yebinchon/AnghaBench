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
 int DEVICE_REGISTER ; 
 int /*<<< orphan*/  IO_DATA_PORT ; 
 int /*<<< orphan*/  IO_INDEX_PORT ; 
 int LOCK_DATA ; 
 int UNLOCK_DATA ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  spinlock ; 
 int /*<<< orphan*/  testmode ; 
 int timeoutW ; 

__attribute__((used)) static int FUNC5(void)
{
	unsigned long flags;

	FUNC3(&spinlock, flags);

	/* Unlock the SuperIO chip */
	FUNC1(UNLOCK_DATA, IO_INDEX_PORT);
	FUNC1(UNLOCK_DATA, IO_INDEX_PORT);

	/*
	 * Select device Aux2 (device=8) to set watchdog regs F2, F3 and F4.
	 * F2 has the timeout in watchdog counter units.
	 * F3 is set to enable watchdog LED blink at timeout.
	 * F4 is used to just clear the TIMEOUT'ed state (bit 0).
	 */
	FUNC1(DEVICE_REGISTER, IO_INDEX_PORT);
	FUNC1(0x08, IO_DATA_PORT);
	FUNC1(0xF2, IO_INDEX_PORT);
	FUNC1(timeoutW, IO_DATA_PORT);
	FUNC1(0xF3, IO_INDEX_PORT);
	FUNC1(0x08, IO_DATA_PORT);
	FUNC1(0xF4, IO_INDEX_PORT);
	FUNC1(0x00, IO_DATA_PORT);

	/* Set device Aux2 active */
	FUNC1(0x30, IO_INDEX_PORT);
	FUNC1(0x01, IO_DATA_PORT);

	/*
	 * Select device Aux1 (dev=7) to set GP16 as the watchdog output
	 * (in reg E6) and GP13 as the watchdog LED output (in reg E3).
	 * Map GP16 at pin 119.
	 * In test mode watch the bit 0 on F4 to indicate "triggered" or
	 * check watchdog LED on SBC.
	 */
	FUNC1(DEVICE_REGISTER, IO_INDEX_PORT);
	FUNC1(0x07, IO_DATA_PORT);
	if (!testmode) {
		unsigned pin_map;

		FUNC1(0xE6, IO_INDEX_PORT);
		FUNC1(0x0A, IO_DATA_PORT);
		FUNC1(0x2C, IO_INDEX_PORT);
		pin_map = FUNC0(IO_DATA_PORT);
		pin_map |= 0x10;
		pin_map &= ~(0x20);
		FUNC1(0x2C, IO_INDEX_PORT);
		FUNC1(pin_map, IO_DATA_PORT);
	}
	FUNC1(0xE3, IO_INDEX_PORT);
	FUNC1(0x08, IO_DATA_PORT);

	/* Set device Aux1 active */
	FUNC1(0x30, IO_INDEX_PORT);
	FUNC1(0x01, IO_DATA_PORT);

	/* Lock the SuperIO chip */
	FUNC1(LOCK_DATA, IO_INDEX_PORT);

	FUNC4(&spinlock, flags);

	FUNC2("activated\n");

	return 0;
}
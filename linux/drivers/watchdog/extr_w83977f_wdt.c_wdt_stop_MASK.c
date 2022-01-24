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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  spinlock ; 
 int /*<<< orphan*/  testmode ; 

__attribute__((used)) static int FUNC4(void)
{
	unsigned long flags;

	FUNC2(&spinlock, flags);

	/* Unlock the SuperIO chip */
	FUNC0(UNLOCK_DATA, IO_INDEX_PORT);
	FUNC0(UNLOCK_DATA, IO_INDEX_PORT);

	/*
	 * Select device Aux2 (device=8) to set watchdog regs F2, F3 and F4.
	 * F2 is reset to its default value (watchdog timer disabled).
	 * F3 is reset to its default state.
	 * F4 clears the TIMEOUT'ed state (bit 0) - back to default.
	 */
	FUNC0(DEVICE_REGISTER, IO_INDEX_PORT);
	FUNC0(0x08, IO_DATA_PORT);
	FUNC0(0xF2, IO_INDEX_PORT);
	FUNC0(0xFF, IO_DATA_PORT);
	FUNC0(0xF3, IO_INDEX_PORT);
	FUNC0(0x00, IO_DATA_PORT);
	FUNC0(0xF4, IO_INDEX_PORT);
	FUNC0(0x00, IO_DATA_PORT);
	FUNC0(0xF2, IO_INDEX_PORT);
	FUNC0(0x00, IO_DATA_PORT);

	/*
	 * Select device Aux1 (dev=7) to set GP16 (in reg E6) and
	 * Gp13 (in reg E3) as inputs.
	 */
	FUNC0(DEVICE_REGISTER, IO_INDEX_PORT);
	FUNC0(0x07, IO_DATA_PORT);
	if (!testmode) {
		FUNC0(0xE6, IO_INDEX_PORT);
		FUNC0(0x01, IO_DATA_PORT);
	}
	FUNC0(0xE3, IO_INDEX_PORT);
	FUNC0(0x01, IO_DATA_PORT);

	/* Lock the SuperIO chip */
	FUNC0(LOCK_DATA, IO_INDEX_PORT);

	FUNC3(&spinlock, flags);

	FUNC1("shutdown\n");

	return 0;
}
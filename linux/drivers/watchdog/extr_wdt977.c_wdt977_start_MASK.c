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
 int timeoutM ; 

__attribute__((used)) static int FUNC4(void)
{
	unsigned long flags;

	FUNC2(&spinlock, flags);

	/* unlock the SuperIO chip */
	FUNC0(UNLOCK_DATA, IO_INDEX_PORT);
	FUNC0(UNLOCK_DATA, IO_INDEX_PORT);

	/* select device Aux2 (device=8) and set watchdog regs F2, F3 and F4
	 * F2 has the timeout in minutes
	 * F3 could be set to the POWER LED blink (with GP17 set to PowerLed)
	 *   at timeout, and to reset timer on kbd/mouse activity (not impl.)
	 * F4 is used to just clear the TIMEOUT'ed state (bit 0)
	 */
	FUNC0(DEVICE_REGISTER, IO_INDEX_PORT);
	FUNC0(0x08, IO_DATA_PORT);
	FUNC0(0xF2, IO_INDEX_PORT);
	FUNC0(timeoutM, IO_DATA_PORT);
	FUNC0(0xF3, IO_INDEX_PORT);
	FUNC0(0x00, IO_DATA_PORT);	/* another setting is 0E for
					   kbd/mouse/LED */
	FUNC0(0xF4, IO_INDEX_PORT);
	FUNC0(0x00, IO_DATA_PORT);

	/* At last select device Aux1 (dev=7) and set GP16 as a
	 * watchdog output. In test mode watch the bit 1 on F4 to
	 * indicate "triggered"
	 */
	if (!testmode) {
		FUNC0(DEVICE_REGISTER, IO_INDEX_PORT);
		FUNC0(0x07, IO_DATA_PORT);
		FUNC0(0xE6, IO_INDEX_PORT);
		FUNC0(0x08, IO_DATA_PORT);
	}

	/* lock the SuperIO chip */
	FUNC0(LOCK_DATA, IO_INDEX_PORT);

	FUNC3(&spinlock, flags);
	FUNC1("activated\n");

	return 0;
}
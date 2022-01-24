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
 int WDIOF_CARDRESET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  spinlock ; 

__attribute__((used)) static int FUNC4(int *status)
{
	int new_status;
	unsigned long flags;

	FUNC2(&spinlock, flags);

	/* unlock the SuperIO chip */
	FUNC1(UNLOCK_DATA, IO_INDEX_PORT);
	FUNC1(UNLOCK_DATA, IO_INDEX_PORT);

	/* select device Aux2 (device=8) and read watchdog reg F4 */
	FUNC1(DEVICE_REGISTER, IO_INDEX_PORT);
	FUNC1(0x08, IO_DATA_PORT);
	FUNC1(0xF4, IO_INDEX_PORT);
	new_status = FUNC0(IO_DATA_PORT);

	/* lock the SuperIO chip */
	FUNC1(LOCK_DATA, IO_INDEX_PORT);

	FUNC3(&spinlock, flags);

	*status = 0;
	if (new_status & 1)
		*status |= WDIOF_CARDRESET;

	return 0;
}
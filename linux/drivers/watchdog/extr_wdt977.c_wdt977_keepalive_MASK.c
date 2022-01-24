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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  spinlock ; 
 int timeoutM ; 

__attribute__((used)) static int FUNC3(void)
{
	unsigned long flags;
	FUNC1(&spinlock, flags);

	/* unlock the SuperIO chip */
	FUNC0(UNLOCK_DATA, IO_INDEX_PORT);
	FUNC0(UNLOCK_DATA, IO_INDEX_PORT);

	/* select device Aux2 (device=8) and kicks watchdog reg F2 */
	/* F2 has the timeout in minutes */
	FUNC0(DEVICE_REGISTER, IO_INDEX_PORT);
	FUNC0(0x08, IO_DATA_PORT);
	FUNC0(0xF2, IO_INDEX_PORT);
	FUNC0(timeoutM, IO_DATA_PORT);

	/* lock the SuperIO chip */
	FUNC0(LOCK_DATA, IO_INDEX_PORT);
	FUNC2(&spinlock, flags);

	return 0;
}
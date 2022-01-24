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
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ dbg_restore_graphics ; 
 int /*<<< orphan*/  ignore_console_lock_warning ; 
 int /*<<< orphan*/  kgdb_connected ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ kgdboc_use_kms ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	FUNC0(&ignore_console_lock_warning);

	/* decrement the module count when the debugger detaches */
	if (!kgdb_connected)
		FUNC3(THIS_MODULE);
	if (kgdboc_use_kms && dbg_restore_graphics) {
		dbg_restore_graphics = 0;
		FUNC1();
	}
	FUNC2();
}
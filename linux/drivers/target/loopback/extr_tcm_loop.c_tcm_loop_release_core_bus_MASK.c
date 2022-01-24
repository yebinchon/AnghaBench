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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcm_loop_driverfs ; 
 int /*<<< orphan*/  tcm_loop_lld_bus ; 
 int /*<<< orphan*/  tcm_loop_primary ; 

__attribute__((used)) static void FUNC4(void)
{
	FUNC1(&tcm_loop_driverfs);
	FUNC0(&tcm_loop_lld_bus);
	FUNC3(tcm_loop_primary);

	FUNC2("Releasing TCM Loop Core BUS\n");
}
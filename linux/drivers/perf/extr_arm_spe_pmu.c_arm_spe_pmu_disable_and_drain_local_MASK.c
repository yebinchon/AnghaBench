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
 int /*<<< orphan*/  SYS_PMBLIMITR_EL1 ; 
 int /*<<< orphan*/  SYS_PMSCR_EL1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  nsh ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	/* Disable profiling at EL0 and EL1 */
	FUNC3(0, SYS_PMSCR_EL1);
	FUNC1();

	/* Drain any buffered data */
	FUNC2();
	FUNC0(nsh);

	/* Disable the profiling buffer */
	FUNC3(0, SYS_PMBLIMITR_EL1);
	FUNC1();
}
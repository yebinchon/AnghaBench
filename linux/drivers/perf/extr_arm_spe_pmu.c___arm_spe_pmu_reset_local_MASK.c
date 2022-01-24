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
 int /*<<< orphan*/  SYS_PMBPTR_EL1 ; 
 int /*<<< orphan*/  SYS_PMBSR_EL1 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
	/*
	 * This is probably overkill, as we have no idea where we're
	 * draining any buffered data to...
	 */
	FUNC0();

	/* Reset the buffer base pointer */
	FUNC2(0, SYS_PMBPTR_EL1);
	FUNC1();

	/* Clear any pending management interrupts */
	FUNC2(0, SYS_PMBSR_EL1);
	FUNC1();
}
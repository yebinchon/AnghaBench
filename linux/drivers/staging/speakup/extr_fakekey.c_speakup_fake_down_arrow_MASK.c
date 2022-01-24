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
 int /*<<< orphan*/  KEY_DOWN ; 
 int /*<<< orphan*/  PRESSED ; 
 int /*<<< orphan*/  RELEASED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  reporting_keystroke ; 
 int /*<<< orphan*/  virt_keyboard ; 

void FUNC7(void)
{
	unsigned long flags;

	/* disable keyboard interrupts */
	FUNC4(flags);
	/* don't change CPU */
	FUNC5();

	FUNC0(reporting_keystroke, true);
	FUNC1(virt_keyboard, KEY_DOWN, PRESSED);
	FUNC1(virt_keyboard, KEY_DOWN, RELEASED);
	FUNC2(virt_keyboard);
	FUNC0(reporting_keystroke, false);

	/* reenable preemption */
	FUNC6();
	/* reenable keyboard interrupts */
	FUNC3(flags);
}
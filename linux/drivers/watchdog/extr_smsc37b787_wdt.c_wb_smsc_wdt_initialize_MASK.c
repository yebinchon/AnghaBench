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
 int /*<<< orphan*/  IODEV_NO ; 
 scalar_t__ UNIT_SECOND ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  io_lock ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ unit ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char) ; 

__attribute__((used)) static void FUNC12(void)
{
	unsigned char old;

	FUNC6(&io_lock);
	FUNC3();
	FUNC5(IODEV_NO);

	/* enable the watchdog */
	FUNC2(0x08);  /* Select pin 80 = LED not GPIO */
	FUNC1(0x0A);  /* Set pin 79 = WDT not
			      GPIO/Output/Polarity=Invert */
	/* disable the timeout */
	FUNC8(0);

	/* reset control register */
	FUNC10(0x00);

	/* reset configuration register */
	FUNC9(0x00);

	/* read old (timer units) register */
	old = FUNC4(0xF1) & 0x7F;
	if (unit == UNIT_SECOND)
		old |= 0x80;	/* set to seconds */

	/* set the watchdog timer units */
	FUNC11(old);

	FUNC0();
	FUNC7(&io_lock);
}
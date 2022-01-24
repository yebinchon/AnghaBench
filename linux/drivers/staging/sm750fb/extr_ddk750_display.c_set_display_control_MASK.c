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
 unsigned long CRT_DISPLAY_CTRL ; 
 unsigned long CRT_DISPLAY_CTRL_RESERVED_MASK ; 
 unsigned long DISPLAY_CTRL_PLANE ; 
 unsigned long DISPLAY_CTRL_TIMING ; 
 unsigned long PANEL_DISPLAY_CTRL ; 
 unsigned long PANEL_DISPLAY_CTRL_RESERVED_MASK ; 
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void FUNC3(int ctrl, int disp_state)
{
	/* state != 0 means turn on both timing & plane en_bit */
	unsigned long reg, val, reserved;
	int cnt = 0;

	if (!ctrl) {
		reg = PANEL_DISPLAY_CTRL;
		reserved = PANEL_DISPLAY_CTRL_RESERVED_MASK;
	} else {
		reg = CRT_DISPLAY_CTRL;
		reserved = CRT_DISPLAY_CTRL_RESERVED_MASK;
	}

	val = FUNC0(reg);
	if (disp_state) {
		/*
		 * Timing should be enabled first before enabling the
		 * plane because changing at the same time does not
		 * guarantee that the plane will also enabled or
		 * disabled.
		 */
		val |= DISPLAY_CTRL_TIMING;
		FUNC1(reg, val);

		val |= DISPLAY_CTRL_PLANE;

		/*
		 * Somehow the register value on the plane is not set
		 * until a few delay. Need to write and read it a
		 * couple times
		 */
		do {
			cnt++;
			FUNC1(reg, val);
		} while ((FUNC0(reg) & ~reserved) != (val & ~reserved));
		FUNC2("Set Plane enbit:after tried %d times\n", cnt);
	} else {
		/*
		 * When turning off, there is no rule on the
		 * programming sequence since whenever the clock is
		 * off, then it does not matter whether the plane is
		 * enabled or disabled.  Note: Modifying the plane bit
		 * will take effect on the next vertical sync. Need to
		 * find out if it is necessary to wait for 1 vsync
		 * before modifying the timing enable bit.
		 */
		val &= ~DISPLAY_CTRL_PLANE;
		FUNC1(reg, val);

		val &= ~DISPLAY_CTRL_TIMING;
		FUNC1(reg, val);
	}
}
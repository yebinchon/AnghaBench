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
 int /*<<< orphan*/  PANEL_DISPLAY_CTRL ; 
 unsigned int PANEL_DISPLAY_CTRL_DATA ; 
 unsigned int PANEL_DISPLAY_CTRL_FPEN ; 
 unsigned int PANEL_DISPLAY_CTRL_VBIASEN ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(int disp, int delay)
{
	unsigned int reg;

	/* disp should be 1 to open sequence */
	reg = FUNC0(PANEL_DISPLAY_CTRL);
	reg |= (disp ? PANEL_DISPLAY_CTRL_FPEN : 0);
	FUNC1(PANEL_DISPLAY_CTRL, reg);
	FUNC2(delay);

	reg = FUNC0(PANEL_DISPLAY_CTRL);
	reg |= (disp ? PANEL_DISPLAY_CTRL_DATA : 0);
	FUNC1(PANEL_DISPLAY_CTRL, reg);
	FUNC2(delay);

	reg = FUNC0(PANEL_DISPLAY_CTRL);
	reg |= (disp ? PANEL_DISPLAY_CTRL_VBIASEN : 0);
	FUNC1(PANEL_DISPLAY_CTRL, reg);
	FUNC2(delay);

	reg = FUNC0(PANEL_DISPLAY_CTRL);
	reg |= (disp ? PANEL_DISPLAY_CTRL_FPEN : 0);
	FUNC1(PANEL_DISPLAY_CTRL, reg);
	FUNC2(delay);
}
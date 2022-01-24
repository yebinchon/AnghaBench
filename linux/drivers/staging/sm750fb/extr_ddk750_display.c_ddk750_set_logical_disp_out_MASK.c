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
typedef  enum disp_output { ____Placeholder_disp_output } disp_output ;

/* Variables and functions */
 int CRT_2_MASK ; 
 int CRT_2_OFFSET ; 
 int CRT_2_USAGE ; 
 int /*<<< orphan*/  CRT_DISPLAY_CTRL ; 
 unsigned int CRT_DISPLAY_CTRL_BLANK ; 
 unsigned int CRT_DISPLAY_CTRL_SELECT_MASK ; 
 int CRT_DISPLAY_CTRL_SELECT_SHIFT ; 
 int DAC_MASK ; 
 int DAC_OFFSET ; 
 int DAC_USAGE ; 
 int DPMS_MASK ; 
 int DPMS_OFFSET ; 
 int DPMS_USAGE ; 
 int /*<<< orphan*/  PANEL_DISPLAY_CTRL ; 
 unsigned int PANEL_DISPLAY_CTRL_SELECT_MASK ; 
 int PANEL_DISPLAY_CTRL_SELECT_SHIFT ; 
 int PNL_2_MASK ; 
 int PNL_2_OFFSET ; 
 int PNL_2_USAGE ; 
 int PNL_SEQ_MASK ; 
 int PNL_SEQ_OFFSET ; 
 int PNL_SEQ_USAGE ; 
 int PRI_TP_MASK ; 
 int PRI_TP_OFFSET ; 
 int PRI_TP_USAGE ; 
 int SEC_TP_MASK ; 
 int SEC_TP_OFFSET ; 
 int SEC_TP_USAGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

void FUNC6(enum disp_output output)
{
	unsigned int reg;

	if (output & PNL_2_USAGE) {
		/* set panel path controller select */
		reg = FUNC1(PANEL_DISPLAY_CTRL);
		reg &= ~PANEL_DISPLAY_CTRL_SELECT_MASK;
		reg |= (((output & PNL_2_MASK) >> PNL_2_OFFSET) <<
			PANEL_DISPLAY_CTRL_SELECT_SHIFT);
		FUNC2(PANEL_DISPLAY_CTRL, reg);
	}

	if (output & CRT_2_USAGE) {
		/* set crt path controller select */
		reg = FUNC1(CRT_DISPLAY_CTRL);
		reg &= ~CRT_DISPLAY_CTRL_SELECT_MASK;
		reg |= (((output & CRT_2_MASK) >> CRT_2_OFFSET) <<
			CRT_DISPLAY_CTRL_SELECT_SHIFT);
		/*se blank off */
		reg &= ~CRT_DISPLAY_CTRL_BLANK;
		FUNC2(CRT_DISPLAY_CTRL, reg);
	}

	if (output & PRI_TP_USAGE) {
		/* set primary timing and plane en_bit */
		FUNC4(0, (output & PRI_TP_MASK) >> PRI_TP_OFFSET);
	}

	if (output & SEC_TP_USAGE) {
		/* set secondary timing and plane en_bit*/
		FUNC4(1, (output & SEC_TP_MASK) >> SEC_TP_OFFSET);
	}

	if (output & PNL_SEQ_USAGE) {
		/* set  panel sequence */
		FUNC5((output & PNL_SEQ_MASK) >> PNL_SEQ_OFFSET,
		4);
	}

	if (output & DAC_USAGE)
		FUNC3((output & DAC_MASK) >> DAC_OFFSET);

	if (output & DPMS_USAGE)
		FUNC0((output & DPMS_MASK) >> DPMS_OFFSET);
}
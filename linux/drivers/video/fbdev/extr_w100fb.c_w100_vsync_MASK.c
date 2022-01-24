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
typedef  int u32 ;

/* Variables and functions */
 scalar_t__ mmACTIVE_V_DISP ; 
 scalar_t__ mmDISP_INT_CNTL ; 
 scalar_t__ mmGEN_INT_CNTL ; 
 scalar_t__ mmGEN_INT_STATUS ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ remapped_regs ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(void)
{
	u32 tmp;
	int timeout = 30000;  /* VSync timeout = 30[ms] > 16.8[ms] */

	tmp = FUNC0(remapped_regs + mmACTIVE_V_DISP);

	/* set vline pos  */
	FUNC2((tmp >> 16) & 0x3ff, remapped_regs + mmDISP_INT_CNTL);

	/* disable vline irq */
	tmp = FUNC0(remapped_regs + mmGEN_INT_CNTL);

	tmp &= ~0x00000002;
	FUNC2(tmp, remapped_regs + mmGEN_INT_CNTL);

	/* clear vline irq status */
	FUNC2(0x00000002, remapped_regs + mmGEN_INT_STATUS);

	/* enable vline irq */
	FUNC2((tmp | 0x00000002), remapped_regs + mmGEN_INT_CNTL);

	/* clear vline irq status */
	FUNC2(0x00000002, remapped_regs + mmGEN_INT_STATUS);

	while(timeout > 0) {
		if (FUNC0(remapped_regs + mmGEN_INT_STATUS) & 0x00000002)
			break;
		FUNC1(1);
		timeout--;
	}

	/* disable vline irq */
	FUNC2(tmp, remapped_regs + mmGEN_INT_CNTL);

	/* clear vline irq status */
	FUNC2(0x00000002, remapped_regs + mmGEN_INT_STATUS);
}
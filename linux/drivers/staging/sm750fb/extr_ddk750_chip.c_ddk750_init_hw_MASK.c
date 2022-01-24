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
struct initchip_param {scalar_t__ powerMode; unsigned int memClock; unsigned int masterClock; int resetMemory; int setAllEngOff; scalar_t__ chipClock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALPHA_DISPLAY_CTRL ; 
 int /*<<< orphan*/  CURRENT_GATE ; 
 unsigned int CURRENT_GATE_DISPLAY ; 
 unsigned int CURRENT_GATE_LOCALMEM ; 
 unsigned int DISPLAY_CTRL_PLANE ; 
 int /*<<< orphan*/  DMA_ABORT_INTERRUPT ; 
 unsigned int DMA_ABORT_INTERRUPT_ABORT_1 ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  MISC_CTRL ; 
 unsigned int MISC_CTRL_LOCALMEM_RESET ; 
 scalar_t__ SM750LE ; 
 int /*<<< orphan*/  VGA_CONFIGURATION ; 
 unsigned int VGA_CONFIGURATION_MODE ; 
 unsigned int VGA_CONFIGURATION_PLL ; 
 int /*<<< orphan*/  VIDEO_ALPHA_DISPLAY_CTRL ; 
 int /*<<< orphan*/  VIDEO_DISPLAY_CTRL ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

int FUNC12(struct initchip_param *pInitParam)
{
	unsigned int reg;

	if (pInitParam->powerMode != 0)
		pInitParam->powerMode = 0;
	FUNC11(pInitParam->powerMode);

	/* Enable display power gate & LOCALMEM power gate*/
	reg = FUNC2(CURRENT_GATE);
	reg |= (CURRENT_GATE_DISPLAY | CURRENT_GATE_LOCALMEM);
	FUNC10(reg);

	if (FUNC9() != SM750LE) {
		/* set panel pll and graphic mode via mmio_88 */
		reg = FUNC2(VGA_CONFIGURATION);
		reg |= (VGA_CONFIGURATION_PLL | VGA_CONFIGURATION_MODE);
		FUNC3(VGA_CONFIGURATION, reg);
	} else {
#if defined(__i386__) || defined(__x86_64__)
		/* set graphic mode via IO method */
		FUNC1(0x88, 0x3d4);
		FUNC1(0x06, 0x3d5);
#endif
	}

	/* Set the Main Chip Clock */
	FUNC4(FUNC0((unsigned int)pInitParam->chipClock));

	/* Set up memory clock. */
	FUNC6(FUNC0(pInitParam->memClock));

	/* Set up master clock */
	FUNC5(FUNC0(pInitParam->masterClock));

	/*
	 * Reset the memory controller.
	 * If the memory controller is not reset in SM750,
	 * the system might hang when sw accesses the memory.
	 * The memory should be resetted after changing the MXCLK.
	 */
	if (pInitParam->resetMemory == 1) {
		reg = FUNC2(MISC_CTRL);
		reg &= ~MISC_CTRL_LOCALMEM_RESET;
		FUNC3(MISC_CTRL, reg);

		reg |= MISC_CTRL_LOCALMEM_RESET;
		FUNC3(MISC_CTRL, reg);
	}

	if (pInitParam->setAllEngOff == 1) {
		FUNC7(0);

		/* Disable Overlay, if a former application left it on */
		reg = FUNC2(VIDEO_DISPLAY_CTRL);
		reg &= ~DISPLAY_CTRL_PLANE;
		FUNC3(VIDEO_DISPLAY_CTRL, reg);

		/* Disable video alpha, if a former application left it on */
		reg = FUNC2(VIDEO_ALPHA_DISPLAY_CTRL);
		reg &= ~DISPLAY_CTRL_PLANE;
		FUNC3(VIDEO_ALPHA_DISPLAY_CTRL, reg);

		/* Disable alpha plane, if a former application left it on */
		reg = FUNC2(ALPHA_DISPLAY_CTRL);
		reg &= ~DISPLAY_CTRL_PLANE;
		FUNC3(ALPHA_DISPLAY_CTRL, reg);

		/* Disable DMA Channel, if a former application left it on */
		reg = FUNC2(DMA_ABORT_INTERRUPT);
		reg |= DMA_ABORT_INTERRUPT_ABORT_1;
		FUNC3(DMA_ABORT_INTERRUPT, reg);

		/* Disable DMA Power, if a former application left it on */
		FUNC8(0);
	}

	/* We can add more initialization as needed. */

	return 0;
}
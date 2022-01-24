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
struct init_status {int chip_clk; scalar_t__ mem_clk; int master_clk; } ;
struct sm750_dev {int devid; int pnltype; int /*<<< orphan*/  accel_off; scalar_t__ nocrt; struct init_status initParm; } ;
struct pci_dev {int dummy; } ;
struct initchip_param {int dummy; } ;

/* Variables and functions */
 int DEFAULT_SM750LE_CHIP_CLOCK ; 
 int DEFAULT_SM750_CHIP_CLOCK ; 
 int /*<<< orphan*/  MISC_CTRL ; 
 unsigned int MISC_CTRL_DAC_POWER_OFF ; 
 int /*<<< orphan*/  PANEL_DISPLAY_CTRL ; 
 unsigned int PANEL_DISPLAY_CTRL_DOUBLE_PIXEL ; 
 unsigned int PANEL_DISPLAY_CTRL_DUAL_DISPLAY ; 
 scalar_t__ SM750LE ; 
 int /*<<< orphan*/  SYSTEM_CTRL ; 
 unsigned int SYSTEM_CTRL_DPMS_MASK ; 
 unsigned int SYSTEM_CTRL_DPMS_VPHN ; 
 unsigned int SYSTEM_CTRL_DPMS_VPHP ; 
 unsigned int SYSTEM_CTRL_PCI_BURST ; 
 int /*<<< orphan*/  FUNC0 (struct initchip_param*) ; 
 int /*<<< orphan*/  FUNC1 (struct sm750_dev*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
#define  sm750_24TFT 130 
#define  sm750_doubleTFT 129 
#define  sm750_dualTFT 128 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int) ; 

int FUNC9(struct sm750_dev *sm750_dev, struct pci_dev *pdev)
{
	struct init_status *parm;

	parm = &sm750_dev->initParm;
	if (parm->chip_clk == 0)
		parm->chip_clk = (FUNC5() == SM750LE) ?
						DEFAULT_SM750LE_CHIP_CLOCK :
						DEFAULT_SM750_CHIP_CLOCK;

	if (parm->mem_clk == 0)
		parm->mem_clk = parm->chip_clk;
	if (parm->master_clk == 0)
		parm->master_clk = parm->chip_clk / 3;

	FUNC0((struct initchip_param *)&sm750_dev->initParm);
	/* for sm718, open pci burst */
	if (sm750_dev->devid == 0x718) {
		FUNC3(SYSTEM_CTRL,
		       FUNC2(SYSTEM_CTRL) | SYSTEM_CTRL_PCI_BURST);
	}

	if (FUNC5() != SM750LE) {
		unsigned int val;
		/* does user need CRT? */
		if (sm750_dev->nocrt) {
			FUNC3(MISC_CTRL,
			       FUNC2(MISC_CTRL) | MISC_CTRL_DAC_POWER_OFF);
			/* shut off dpms */
			val = FUNC2(SYSTEM_CTRL) & ~SYSTEM_CTRL_DPMS_MASK;
			val |= SYSTEM_CTRL_DPMS_VPHN;
			FUNC3(SYSTEM_CTRL, val);
		} else {
			FUNC3(MISC_CTRL,
			       FUNC2(MISC_CTRL) & ~MISC_CTRL_DAC_POWER_OFF);
			/* turn on dpms */
			val = FUNC2(SYSTEM_CTRL) & ~SYSTEM_CTRL_DPMS_MASK;
			val |= SYSTEM_CTRL_DPMS_VPHP;
			FUNC3(SYSTEM_CTRL, val);
		}

		val = FUNC2(PANEL_DISPLAY_CTRL) &
			~(PANEL_DISPLAY_CTRL_DUAL_DISPLAY |
			  PANEL_DISPLAY_CTRL_DOUBLE_PIXEL);
		switch (sm750_dev->pnltype) {
		case sm750_24TFT:
			break;
		case sm750_doubleTFT:
			val |= PANEL_DISPLAY_CTRL_DOUBLE_PIXEL;
			break;
		case sm750_dualTFT:
			val |= PANEL_DISPLAY_CTRL_DUAL_DISPLAY;
			break;
		}
		FUNC3(PANEL_DISPLAY_CTRL, val);
	} else {
		/*
		 * for 750LE, no DVI chip initialization
		 * makes Monitor no signal
		 *
		 * Set up GPIO for software I2C to program DVI chip in the
		 * Xilinx SP605 board, in order to have video signal.
		 */
		FUNC6(0, 1);

		/*
		 * Customer may NOT use CH7301 DVI chip, which has to be
		 * initialized differently.
		 */
		if (FUNC7(0xec, 0x4a) == 0x95) {
			/*
			 * The following register values for CH7301 are from
			 * Chrontel app note and our experiment.
			 */
			FUNC4("yes,CH7301 DVI chip found\n");
			FUNC8(0xec, 0x1d, 0x16);
			FUNC8(0xec, 0x21, 0x9);
			FUNC8(0xec, 0x49, 0xC0);
			FUNC4("okay,CH7301 DVI chip setup done\n");
		}
	}

	/* init 2d engine */
	if (!sm750_dev->accel_off)
		FUNC1(sm750_dev);

	return 0;
}
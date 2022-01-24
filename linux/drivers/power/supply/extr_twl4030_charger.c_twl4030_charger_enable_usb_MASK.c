#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct twl4030_bci {scalar_t__ usb_mode; int usb_enabled; scalar_t__ usb_cur; TYPE_1__* transceiver; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CHARGE_AUTO ; 
 scalar_t__ CHARGE_LINEAR ; 
 scalar_t__ CHARGE_OFF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int TWL4030_BATSTS ; 
 int TWL4030_BCIAUTOAC ; 
 int TWL4030_BCIAUTOUSB ; 
 int /*<<< orphan*/  TWL4030_BCIMDKEY ; 
 int /*<<< orphan*/  TWL4030_BCIMFEN3 ; 
 int /*<<< orphan*/  TWL4030_BCIMFKEY ; 
 int /*<<< orphan*/  TWL4030_BCIMFSTS4 ; 
 int /*<<< orphan*/  TWL4030_BCIWDKEY ; 
 int TWL4030_CVENAC ; 
 int TWL4030_ICHGEOC ; 
 int TWL4030_ICHGLOW ; 
 int /*<<< orphan*/  TWL4030_INTERRUPTS_BCIIMR1A ; 
 int /*<<< orphan*/  TWL4030_MODULE_INTERRUPTS ; 
 int TWL4030_TBATOR1 ; 
 int TWL4030_TBATOR2 ; 
 int /*<<< orphan*/  TWL4030_USBFASTMCHG ; 
 int /*<<< orphan*/  TWL_MODULE_MAIN_CHARGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct twl4030_bci*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct twl4030_bci *bci, bool enable)
{
	int ret;
	u32 reg;

	if (bci->usb_mode == CHARGE_OFF)
		enable = false;
	if (enable && !FUNC0(bci->transceiver)) {

		FUNC5(bci);

		/* Need to keep phy powered */
		if (!bci->usb_enabled) {
			FUNC2(bci->transceiver->dev);
			bci->usb_enabled = 1;
		}

		if (bci->usb_mode == CHARGE_AUTO) {
			/* Enable interrupts now. */
			reg = ~(u32)(TWL4030_ICHGLOW | TWL4030_ICHGEOC |
					TWL4030_TBATOR2 | TWL4030_TBATOR1 |
					TWL4030_BATSTS);
			ret = FUNC8(TWL4030_MODULE_INTERRUPTS, reg,
				       TWL4030_INTERRUPTS_BCIIMR1A);
			if (ret < 0) {
				FUNC1(bci->dev,
					"failed to unmask interrupts: %d\n",
					ret);
				return ret;
			}
			/* forcing the field BCIAUTOUSB (BOOT_BCI[1]) to 1 */
			ret = FUNC7(0, TWL4030_BCIAUTOUSB);
		}

		/* forcing USBFASTMCHG(BCIMFSTS4[2]) to 1 */
		ret = FUNC6(TWL_MODULE_MAIN_CHARGE, 0,
			TWL4030_USBFASTMCHG, TWL4030_BCIMFSTS4);
		if (bci->usb_mode == CHARGE_LINEAR) {
			/* Enable interrupts now. */
			reg = ~(u32)(TWL4030_ICHGLOW | TWL4030_TBATOR2 |
					TWL4030_TBATOR1 | TWL4030_BATSTS);
			ret = FUNC8(TWL4030_MODULE_INTERRUPTS, reg,
				       TWL4030_INTERRUPTS_BCIIMR1A);
			if (ret < 0) {
				FUNC1(bci->dev,
					"failed to unmask interrupts: %d\n",
					ret);
				return ret;
			}
			FUNC7(TWL4030_BCIAUTOAC|TWL4030_CVENAC, 0);
			/* Watch dog key: WOVF acknowledge */
			ret = FUNC8(TWL_MODULE_MAIN_CHARGE, 0x33,
					       TWL4030_BCIWDKEY);
			/* 0x24 + EKEY6: off mode */
			ret = FUNC8(TWL_MODULE_MAIN_CHARGE, 0x2a,
					       TWL4030_BCIMDKEY);
			/* EKEY2: Linear charge: USB path */
			ret = FUNC8(TWL_MODULE_MAIN_CHARGE, 0x26,
					       TWL4030_BCIMDKEY);
			/* WDKEY5: stop watchdog count */
			ret = FUNC8(TWL_MODULE_MAIN_CHARGE, 0xf3,
					       TWL4030_BCIWDKEY);
			/* enable MFEN3 access */
			ret = FUNC8(TWL_MODULE_MAIN_CHARGE, 0x9c,
					       TWL4030_BCIMFKEY);
			 /* ICHGEOCEN - end-of-charge monitor (current < 80mA)
			  *                      (charging continues)
			  * ICHGLOWEN - current level monitor (charge continues)
			  * don't monitor over-current or heat save
			  */
			ret = FUNC8(TWL_MODULE_MAIN_CHARGE, 0xf0,
					       TWL4030_BCIMFEN3);
		}
	} else {
		ret = FUNC7(TWL4030_BCIAUTOUSB, 0);
		ret |= FUNC8(TWL_MODULE_MAIN_CHARGE, 0x2a,
					TWL4030_BCIMDKEY);
		if (bci->usb_enabled) {
			FUNC3(bci->transceiver->dev);
			FUNC4(bci->transceiver->dev);
			bci->usb_enabled = 0;
		}
		bci->usb_cur = 0;
	}

	return ret;
}
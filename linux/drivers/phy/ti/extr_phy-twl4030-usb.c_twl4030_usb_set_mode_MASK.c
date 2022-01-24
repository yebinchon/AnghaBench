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
struct twl4030_usb {int usb_mode; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  POWER_CTRL ; 
 int /*<<< orphan*/  POWER_CTRL_OTG_ENAB ; 
#define  T2_USB_MODE_ULPI 128 
 int /*<<< orphan*/  ULPI_FUNC_CTRL ; 
 int ULPI_FUNC_CTRL_OPMODE_MASK ; 
 int ULPI_FUNC_CTRL_XCVRSEL_MASK ; 
 int /*<<< orphan*/  ULPI_IFC_CTRL ; 
 int ULPI_IFC_CTRL_CARKITMODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct twl4030_usb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct twl4030_usb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct twl4030_usb *twl, int mode)
{
	twl->usb_mode = mode;

	switch (mode) {
	case T2_USB_MODE_ULPI:
		FUNC1(twl, ULPI_IFC_CTRL,
					ULPI_IFC_CTRL_CARKITMODE);
		FUNC2(twl, POWER_CTRL, POWER_CTRL_OTG_ENAB);
		FUNC1(twl, ULPI_FUNC_CTRL,
					ULPI_FUNC_CTRL_XCVRSEL_MASK |
					ULPI_FUNC_CTRL_OPMODE_MASK);
		break;
	case -1:
		/* FIXME: power on defaults */
		break;
	default:
		FUNC0(twl->dev, "unsupported T2 transceiver mode %d\n",
				mode);
		break;
	}
}
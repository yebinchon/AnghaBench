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
typedef  int u8 ;
struct omap_musb_board_data {int /*<<< orphan*/  interface_type; } ;
struct omap2430_glue {int status; int /*<<< orphan*/  control_otghs; } ;
struct musb_hdrc_platform_data {struct omap_musb_board_data* board_data; } ;
struct musb {int /*<<< orphan*/  mregs; struct device* controller; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  MUSB_DEVCTL ; 
 int MUSB_DEVCTL_BDEVICE ; 
 int MUSB_DEVCTL_SESSION ; 
#define  MUSB_ID_GROUND 129 
 int /*<<< orphan*/  MUSB_INTERFACE_UTMI ; 
#define  MUSB_VBUS_VALID 128 
 int /*<<< orphan*/  USB_MODE_DEVICE ; 
 int /*<<< orphan*/  USB_MODE_HOST ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct omap2430_glue* FUNC2 (int /*<<< orphan*/ ) ; 
 struct musb_hdrc_platform_data* FUNC3 (struct device*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct musb *musb)
{
	u8		devctl;
	unsigned long timeout = jiffies + FUNC4(1000);
	struct device *dev = musb->controller;
	struct omap2430_glue *glue = FUNC2(dev->parent);
	struct musb_hdrc_platform_data *pdata = FUNC3(dev);
	struct omap_musb_board_data *data = pdata->board_data;


	switch (glue->status) {

	case MUSB_ID_GROUND:
		FUNC7(glue->control_otghs, USB_MODE_HOST);
		if (data->interface_type != MUSB_INTERFACE_UTMI)
			break;
		devctl = FUNC5(musb->mregs, MUSB_DEVCTL);
		/* start the session */
		devctl |= MUSB_DEVCTL_SESSION;
		FUNC6(musb->mregs, MUSB_DEVCTL, devctl);
		while (FUNC5(musb->mregs, MUSB_DEVCTL) &
				MUSB_DEVCTL_BDEVICE) {
			FUNC0();

			if (FUNC8(jiffies, timeout)) {
				FUNC1(dev, "configured as A device timeout");
				break;
			}
		}
		break;

	case MUSB_VBUS_VALID:
		FUNC7(glue->control_otghs, USB_MODE_DEVICE);
		break;

	default:
		break;
	}
}
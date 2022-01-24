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
struct twl6030_usb {int asleep; int linkstat; int /*<<< orphan*/  dev; int /*<<< orphan*/  usb3v3; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  enum musb_vbus_id_status { ____Placeholder_musb_vbus_id_status } musb_vbus_id_status ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int MUSB_ID_GROUND ; 
 void* MUSB_UNKNOWN ; 
 int /*<<< orphan*/  STS_HW_CONDITIONS ; 
 int STS_USB_ID ; 
 int /*<<< orphan*/  TWL6030_MODULE_ID0 ; 
 int /*<<< orphan*/  TWL_MODULE_USB ; 
 int /*<<< orphan*/  USB_ID_INT_EN_HI_CLR ; 
 int /*<<< orphan*/  USB_ID_INT_EN_HI_SET ; 
 int /*<<< orphan*/  USB_ID_INT_LATCH_CLR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct twl6030_usb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct twl6030_usb*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *_twl)
{
	struct twl6030_usb *twl = _twl;
	enum musb_vbus_id_status status = MUSB_UNKNOWN;
	u8 hw_state;
	int ret;

	hw_state = FUNC3(twl, TWL6030_MODULE_ID0, STS_HW_CONDITIONS);

	if (hw_state & STS_USB_ID) {
		ret = FUNC2(twl->usb3v3);
		if (ret)
			FUNC0(twl->dev, "Failed to enable usb3v3\n");

		twl->asleep = 1;
		FUNC4(twl, TWL_MODULE_USB, 0x1, USB_ID_INT_EN_HI_CLR);
		FUNC4(twl, TWL_MODULE_USB, 0x10, USB_ID_INT_EN_HI_SET);
		status = MUSB_ID_GROUND;
		twl->linkstat = status;
		ret = FUNC1(status);
		if (ret)
			twl->linkstat = MUSB_UNKNOWN;
	} else  {
		FUNC4(twl, TWL_MODULE_USB, 0x10, USB_ID_INT_EN_HI_CLR);
		FUNC4(twl, TWL_MODULE_USB, 0x1, USB_ID_INT_EN_HI_SET);
	}
	FUNC4(twl, TWL_MODULE_USB, status, USB_ID_INT_LATCH_CLR);

	return IRQ_HANDLED;
}
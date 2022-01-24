#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* otg; } ;
struct tahvo_usb {int vbus_state; TYPE_2__* pt_dev; int /*<<< orphan*/  extcon; TYPE_3__ phy; } ;
struct retu_dev {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  kobj; int /*<<< orphan*/  parent; } ;
struct TYPE_6__ {TYPE_4__ dev; } ;
struct TYPE_5__ {int state; int /*<<< orphan*/  gadget; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXTCON_USB ; 
#define  OTG_STATE_A_HOST 131 
#define  OTG_STATE_A_IDLE 130 
#define  OTG_STATE_B_IDLE 129 
#define  OTG_STATE_B_PERIPHERAL 128 
 int /*<<< orphan*/  TAHVO_REG_IDSR ; 
 int TAHVO_STAT_VBUS ; 
 int /*<<< orphan*/  USB_EVENT_ENUMERATED ; 
 int /*<<< orphan*/  USB_EVENT_NONE ; 
 struct retu_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct retu_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct tahvo_usb *tu)
{
	struct retu_dev *rdev = FUNC0(tu->pt_dev->dev.parent);
	int reg, prev_state;

	reg = FUNC3(rdev, TAHVO_REG_IDSR);
	if (reg & TAHVO_STAT_VBUS) {
		switch (tu->phy.otg->state) {
		case OTG_STATE_B_IDLE:
			/* Enable the gadget driver */
			if (tu->phy.otg->gadget)
				FUNC5(tu->phy.otg->gadget);
			tu->phy.otg->state = OTG_STATE_B_PERIPHERAL;
			FUNC7(&tu->phy, USB_EVENT_ENUMERATED);
			break;
		case OTG_STATE_A_IDLE:
			/*
			 * Session is now valid assuming the USB hub is driving
			 * Vbus.
			 */
			tu->phy.otg->state = OTG_STATE_A_HOST;
			break;
		default:
			break;
		}
		FUNC1(&tu->pt_dev->dev, "USB cable connected\n");
	} else {
		switch (tu->phy.otg->state) {
		case OTG_STATE_B_PERIPHERAL:
			if (tu->phy.otg->gadget)
				FUNC6(tu->phy.otg->gadget);
			tu->phy.otg->state = OTG_STATE_B_IDLE;
			FUNC7(&tu->phy, USB_EVENT_NONE);
			break;
		case OTG_STATE_A_HOST:
			tu->phy.otg->state = OTG_STATE_A_IDLE;
			break;
		default:
			break;
		}
		FUNC1(&tu->pt_dev->dev, "USB cable disconnected\n");
	}

	prev_state = tu->vbus_state;
	tu->vbus_state = reg & TAHVO_STAT_VBUS;
	if (prev_state != tu->vbus_state) {
		FUNC2(tu->extcon, EXTCON_USB, tu->vbus_state);
		FUNC4(&tu->pt_dev->dev.kobj, NULL, "vbus_state");
	}
}
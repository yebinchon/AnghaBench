#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* otg; int /*<<< orphan*/  notifier; } ;
struct ab8500_usb {scalar_t__ mode; int /*<<< orphan*/  dev; int /*<<< orphan*/  ab8500; scalar_t__ vbus_draw; TYPE_2__ phy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  enum usb_phy_events { ____Placeholder_usb_phy_events } usb_phy_events ;
struct TYPE_3__ {int default_a; } ;

/* Variables and functions */
 int /*<<< orphan*/  AB8500_BIT_PHY_CTRL_DEVICE_EN ; 
 int /*<<< orphan*/  AB8500_USB ; 
 int /*<<< orphan*/  AB8500_USB_PHY_CTRL_REG ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ USB_DEDICATED_CHG ; 
 int USB_EVENT_NONE ; 
 scalar_t__ USB_HOST ; 
 void* USB_IDLE ; 
 scalar_t__ USB_PERIPHERAL ; 
 int UX500_MUSB_CLEAN ; 
 int /*<<< orphan*/  FUNC0 (struct ab8500_usb*) ; 
 int /*<<< orphan*/  FUNC1 (struct ab8500_usb*) ; 
 int /*<<< orphan*/  FUNC2 (struct ab8500_usb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct ab8500_usb *ab = (struct ab8500_usb *) data;
	enum usb_phy_events event = USB_EVENT_NONE;

	/* Link status will not be updated till phy is disabled. */
	if (ab->mode == USB_HOST) {
		ab->phy.otg->default_a = false;
		ab->vbus_draw = 0;
		FUNC4(&ab->phy.notifier,
				event, &ab->vbus_draw);
		FUNC0(ab);
		ab->mode = USB_IDLE;
	}

	if (ab->mode == USB_PERIPHERAL) {
		FUNC4(&ab->phy.notifier,
				event, &ab->vbus_draw);
		FUNC1(ab);
		FUNC4(&ab->phy.notifier,
				UX500_MUSB_CLEAN, &ab->vbus_draw);
		ab->mode = USB_IDLE;
		ab->phy.otg->default_a = false;
		ab->vbus_draw = 0;
	}

	if (FUNC5(ab->ab8500)) {
		if (ab->mode == USB_DEDICATED_CHG) {
			FUNC2(ab,
					AB8500_BIT_PHY_CTRL_DEVICE_EN);
			FUNC3(ab->dev,
					AB8500_USB, AB8500_USB_PHY_CTRL_REG,
					AB8500_BIT_PHY_CTRL_DEVICE_EN, 0);
		}
	}

	return IRQ_HANDLED;
}
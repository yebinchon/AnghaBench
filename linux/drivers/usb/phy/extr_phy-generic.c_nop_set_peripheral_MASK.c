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
struct usb_otg {scalar_t__ state; struct usb_gadget* gadget; TYPE_1__* usb_phy; } ;
struct usb_gadget {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  notifier; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ OTG_STATE_B_IDLE ; 
 scalar_t__ OTG_STATE_B_PERIPHERAL ; 
 int /*<<< orphan*/  USB_EVENT_VBUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct usb_gadget*) ; 

__attribute__((used)) static int FUNC1(struct usb_otg *otg, struct usb_gadget *gadget)
{
	if (!otg)
		return -ENODEV;

	if (!gadget) {
		otg->gadget = NULL;
		return -ENODEV;
	}

	otg->gadget = gadget;
	if (otg->state == OTG_STATE_B_PERIPHERAL)
		FUNC0(&otg->usb_phy->notifier,
					   USB_EVENT_VBUS, otg->gadget);
	else
		otg->state = OTG_STATE_B_IDLE;
	return 0;
}
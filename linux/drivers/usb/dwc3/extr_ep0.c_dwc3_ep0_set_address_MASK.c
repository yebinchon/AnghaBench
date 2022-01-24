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
struct usb_ctrlrequest {int /*<<< orphan*/  wValue; } ;
struct TYPE_2__ {int state; } ;
struct dwc3 {TYPE_1__ gadget; int /*<<< orphan*/  regs; int /*<<< orphan*/  dev; } ;
typedef  enum usb_device_state { ____Placeholder_usb_device_state } usb_device_state ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_DCFG ; 
 int FUNC0 (int) ; 
 int DWC3_DCFG_DEVADDR_MASK ; 
 int EINVAL ; 
 int /*<<< orphan*/  USB_STATE_ADDRESS ; 
 int USB_STATE_CONFIGURED ; 
 int /*<<< orphan*/  USB_STATE_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
{
	enum usb_device_state state = dwc->gadget.state;
	u32 addr;
	u32 reg;

	addr = FUNC4(ctrl->wValue);
	if (addr > 127) {
		FUNC1(dwc->dev, "invalid device address %d\n", addr);
		return -EINVAL;
	}

	if (state == USB_STATE_CONFIGURED) {
		FUNC1(dwc->dev, "can't SetAddress() from Configured State\n");
		return -EINVAL;
	}

	reg = FUNC2(dwc->regs, DWC3_DCFG);
	reg &= ~(DWC3_DCFG_DEVADDR_MASK);
	reg |= FUNC0(addr);
	FUNC3(dwc->regs, DWC3_DCFG, reg);

	if (addr)
		FUNC5(&dwc->gadget, USB_STATE_ADDRESS);
	else
		FUNC5(&dwc->gadget, USB_STATE_DEFAULT);

	return 0;
}
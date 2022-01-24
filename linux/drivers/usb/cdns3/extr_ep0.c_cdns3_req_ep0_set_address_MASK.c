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
typedef  scalar_t__ u32 ;
struct usb_ctrlrequest {int /*<<< orphan*/  wValue; } ;
struct TYPE_4__ {int state; } ;
struct cdns3_device {TYPE_2__ gadget; TYPE_1__* regs; int /*<<< orphan*/  dev; } ;
typedef  enum usb_device_state { ____Placeholder_usb_device_state } usb_device_state ;
struct TYPE_3__ {int /*<<< orphan*/  usb_cmd; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ USB_CMD_SET_ADDR ; 
 scalar_t__ USB_DEVICE_MAX_ADDRESS ; 
 int /*<<< orphan*/  USB_STATE_ADDRESS ; 
 int USB_STATE_CONFIGURED ; 
 int /*<<< orphan*/  USB_STATE_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct cdns3_device *priv_dev,
				     struct usb_ctrlrequest *ctrl_req)
{
	enum usb_device_state device_state = priv_dev->gadget.state;
	u32 reg;
	u32 addr;

	addr = FUNC2(ctrl_req->wValue);

	if (addr > USB_DEVICE_MAX_ADDRESS) {
		FUNC1(priv_dev->dev,
			"Device address (%d) cannot be greater than %d\n",
			addr, USB_DEVICE_MAX_ADDRESS);
		return -EINVAL;
	}

	if (device_state == USB_STATE_CONFIGURED) {
		FUNC1(priv_dev->dev,
			"can't set_address from configured state\n");
		return -EINVAL;
	}

	reg = FUNC3(&priv_dev->regs->usb_cmd);

	FUNC5(reg | FUNC0(addr) | USB_CMD_SET_ADDR,
	       &priv_dev->regs->usb_cmd);

	FUNC4(&priv_dev->gadget,
			     (addr ? USB_STATE_ADDRESS : USB_STATE_DEFAULT));

	return 0;
}
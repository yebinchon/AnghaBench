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
typedef  int u32 ;
typedef  int u16 ;
struct usb_ctrlrequest {int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; } ;
struct TYPE_3__ {int state; int speed; } ;
struct cdns3_device {int wake_up_flag; int u1_allowed; int u2_allowed; TYPE_2__* regs; TYPE_1__ gadget; } ;
typedef  enum usb_device_state { ____Placeholder_usb_device_state } usb_device_state ;
typedef  enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;
struct TYPE_4__ {int /*<<< orphan*/  usb_cmd; } ;

/* Variables and functions */
 int EINVAL ; 
#define  TEST_J 136 
#define  TEST_K 135 
#define  TEST_PACKET 134 
#define  TEST_SE0_NAK 133 
 int USB_CMD_STMODE ; 
#define  USB_DEVICE_LTM_ENABLE 132 
#define  USB_DEVICE_REMOTE_WAKEUP 131 
#define  USB_DEVICE_TEST_MODE 130 
#define  USB_DEVICE_U1_ENABLE 129 
#define  USB_DEVICE_U2_ENABLE 128 
 int USB_SPEED_HIGH ; 
 int USB_SPEED_SUPER ; 
 int USB_STATE_CONFIGURED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cdns3_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct cdns3_device *priv_dev,
					   struct usb_ctrlrequest *ctrl,
					   int set)
{
	enum usb_device_state state;
	enum usb_device_speed speed;
	int ret = 0;
	u32 wValue;
	u16 tmode;

	wValue = FUNC3(ctrl->wValue);
	state = priv_dev->gadget.state;
	speed = priv_dev->gadget.speed;

	switch (wValue) {
	case USB_DEVICE_REMOTE_WAKEUP:
		priv_dev->wake_up_flag = !!set;
		break;
	case USB_DEVICE_U1_ENABLE:
		if (state != USB_STATE_CONFIGURED || speed != USB_SPEED_SUPER)
			return -EINVAL;

		priv_dev->u1_allowed = !!set;
		break;
	case USB_DEVICE_U2_ENABLE:
		if (state != USB_STATE_CONFIGURED || speed != USB_SPEED_SUPER)
			return -EINVAL;

		priv_dev->u2_allowed = !!set;
		break;
	case USB_DEVICE_LTM_ENABLE:
		ret = -EINVAL;
		break;
	case USB_DEVICE_TEST_MODE:
		if (state != USB_STATE_CONFIGURED || speed > USB_SPEED_HIGH)
			return -EINVAL;

		tmode = FUNC3(ctrl->wIndex);

		if (!set || (tmode & 0xff) != 0)
			return -EINVAL;

		switch (tmode >> 8) {
		case TEST_J:
		case TEST_K:
		case TEST_SE0_NAK:
		case TEST_PACKET:
			FUNC1(priv_dev, 0, 1);
			/**
			 *  Little delay to give the controller some time
			 * for sending status stage.
			 * This time should be less then 3ms.
			 */
			FUNC4(1);
			FUNC2(&priv_dev->regs->usb_cmd,
					       USB_CMD_STMODE |
					       FUNC0(tmode - 1));
			break;
		default:
			ret = -EINVAL;
		}
		break;
	default:
		ret = -EINVAL;
	}

	return ret;
}
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
struct usb_gadget_driver {int max_speed; } ;
struct usb_gadget {int /*<<< orphan*/  max_speed; } ;
struct cdns3_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; TYPE_1__* regs; struct usb_gadget_driver* gadget_driver; } ;
typedef  enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;
struct TYPE_2__ {int /*<<< orphan*/  usb_conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_CONF_SFORCE_FS ; 
 int /*<<< orphan*/  USB_CONF_USB3DIS ; 
#define  USB_SPEED_FULL 131 
#define  USB_SPEED_HIGH 130 
#define  USB_SPEED_SUPER 129 
#define  USB_SPEED_UNKNOWN 128 
 int /*<<< orphan*/  FUNC0 (struct cdns3_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct cdns3_device* FUNC2 (struct usb_gadget*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct usb_gadget *gadget,
				  struct usb_gadget_driver *driver)
{
	struct cdns3_device *priv_dev = FUNC2(gadget);
	unsigned long flags;
	enum usb_device_speed max_speed = driver->max_speed;

	FUNC4(&priv_dev->lock, flags);
	priv_dev->gadget_driver = driver;

	/* limit speed if necessary */
	max_speed = FUNC3(driver->max_speed, gadget->max_speed);

	switch (max_speed) {
	case USB_SPEED_FULL:
		FUNC6(USB_CONF_SFORCE_FS, &priv_dev->regs->usb_conf);
		FUNC6(USB_CONF_USB3DIS, &priv_dev->regs->usb_conf);
		break;
	case USB_SPEED_HIGH:
		FUNC6(USB_CONF_USB3DIS, &priv_dev->regs->usb_conf);
		break;
	case USB_SPEED_SUPER:
		break;
	default:
		FUNC1(priv_dev->dev,
			"invalid maximum_speed parameter %d\n",
			max_speed);
		/* fall through */
	case USB_SPEED_UNKNOWN:
		/* default to superspeed */
		max_speed = USB_SPEED_SUPER;
		break;
	}

	FUNC0(priv_dev);
	FUNC5(&priv_dev->lock, flags);
	return 0;
}
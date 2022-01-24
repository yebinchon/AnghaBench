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
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct usbhsg_gpriv {struct usb_gadget_driver* driver; TYPE_1__ gadget; TYPE_2__* transceiver; } ;
struct usbhs_priv {int dummy; } ;
struct usb_gadget_driver {scalar_t__ max_speed; int /*<<< orphan*/  setup; } ;
struct usb_gadget {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  otg; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  USBHSG_STATUS_REGISTERD ; 
 scalar_t__ USB_SPEED_FULL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbhs_priv*) ; 
 struct device* FUNC4 (struct usbhs_priv*) ; 
 struct usbhsg_gpriv* FUNC5 (struct usb_gadget*) ; 
 struct usbhs_priv* FUNC6 (struct usbhsg_gpriv*) ; 
 int FUNC7 (struct usbhs_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct usb_gadget *gadget,
		struct usb_gadget_driver *driver)
{
	struct usbhsg_gpriv *gpriv = FUNC5(gadget);
	struct usbhs_priv *priv = FUNC6(gpriv);
	struct device *dev = FUNC4(priv);
	int ret;

	if (!driver		||
	    !driver->setup	||
	    driver->max_speed < USB_SPEED_FULL)
		return -EINVAL;

	/* connect to bus through transceiver */
	if (!FUNC0(gpriv->transceiver)) {
		ret = FUNC2(gpriv->transceiver->otg,
					&gpriv->gadget);
		if (ret) {
			FUNC1(dev, "%s: can't bind to transceiver\n",
				gpriv->gadget.name);
			return ret;
		}

		/* get vbus using phy versions */
		FUNC3(priv);
	}

	/* first hook up the driver ... */
	gpriv->driver = driver;

	return FUNC7(priv, USBHSG_STATUS_REGISTERD);
}
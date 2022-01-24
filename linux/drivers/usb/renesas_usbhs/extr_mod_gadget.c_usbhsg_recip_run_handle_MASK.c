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
struct usbhsg_uep {int dummy; } ;
struct usbhsg_recip_handle {int (* device ) (struct usbhs_priv*,struct usbhsg_uep*,struct usb_ctrlrequest*) ;int (* interface ) (struct usbhs_priv*,struct usbhsg_uep*,struct usb_ctrlrequest*) ;int (* endpoint ) (struct usbhs_priv*,struct usbhsg_uep*,struct usb_ctrlrequest*) ;int /*<<< orphan*/  name; } ;
struct usbhsg_gpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int dummy; } ;
struct usb_ctrlrequest {int bRequestType; int /*<<< orphan*/  wIndex; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int USB_ENDPOINT_NUMBER_MASK ; 
#define  USB_RECIP_DEVICE 130 
#define  USB_RECIP_ENDPOINT 129 
#define  USB_RECIP_INTERFACE 128 
 int USB_RECIP_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct device* FUNC4 (struct usbhsg_gpriv*) ; 
 struct usbhsg_uep* FUNC5 (struct usbhsg_gpriv*,int) ; 
 struct usbhsg_gpriv* FUNC6 (struct usbhs_priv*) ; 
 struct usbhs_pipe* FUNC7 (struct usbhsg_uep*) ; 

__attribute__((used)) static int FUNC8(struct usbhs_priv *priv,
				   struct usbhsg_recip_handle *handler,
				   struct usb_ctrlrequest *ctrl)
{
	struct usbhsg_gpriv *gpriv = FUNC6(priv);
	struct device *dev = FUNC4(gpriv);
	struct usbhsg_uep *uep;
	struct usbhs_pipe *pipe;
	int recip = ctrl->bRequestType & USB_RECIP_MASK;
	int nth = FUNC3(ctrl->wIndex) & USB_ENDPOINT_NUMBER_MASK;
	int ret = 0;
	int (*func)(struct usbhs_priv *priv, struct usbhsg_uep *uep,
		    struct usb_ctrlrequest *ctrl);
	char *msg;

	uep = FUNC5(gpriv, nth);
	pipe = FUNC7(uep);
	if (!pipe) {
		FUNC1(dev, "wrong recip request\n");
		return -EINVAL;
	}

	switch (recip) {
	case USB_RECIP_DEVICE:
		msg	= "DEVICE";
		func	= handler->device;
		break;
	case USB_RECIP_INTERFACE:
		msg	= "INTERFACE";
		func	= handler->interface;
		break;
	case USB_RECIP_ENDPOINT:
		msg	= "ENDPOINT";
		func	= handler->endpoint;
		break;
	default:
		FUNC2(dev, "unsupported RECIP(%d)\n", recip);
		func = NULL;
		ret = -EINVAL;
	}

	if (func) {
		FUNC0(dev, "%s (pipe %d :%s)\n", handler->name, nth, msg);
		ret = func(priv, uep, ctrl);
	}

	return ret;
}
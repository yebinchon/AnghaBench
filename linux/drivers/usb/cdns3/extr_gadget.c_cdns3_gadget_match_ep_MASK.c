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
struct usb_ss_ep_comp_descriptor {int dummy; } ;
struct usb_gadget {int dummy; } ;
struct usb_ep {struct usb_endpoint_descriptor* desc; } ;
struct usb_endpoint_descriptor {scalar_t__ bInterval; } ;
struct cdns3_endpoint {struct usb_ep endpoint; int /*<<< orphan*/  interval; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; int /*<<< orphan*/  dir; int /*<<< orphan*/  name; } ;
struct cdns3_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  EP_CLAIMED ; 
 scalar_t__ FUNC1 (struct cdns3_endpoint*) ; 
 int /*<<< orphan*/  USB_DIR_IN ; 
 int /*<<< orphan*/  USB_DIR_OUT ; 
 struct cdns3_endpoint* FUNC2 (struct cdns3_device*,struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct cdns3_device* FUNC5 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_endpoint_descriptor*) ; 

__attribute__((used)) static struct
usb_ep *FUNC10(struct usb_gadget *gadget,
			      struct usb_endpoint_descriptor *desc,
			      struct usb_ss_ep_comp_descriptor *comp_desc)
{
	struct cdns3_device *priv_dev = FUNC5(gadget);
	struct cdns3_endpoint *priv_ep;
	unsigned long flags;

	priv_ep = FUNC2(priv_dev, desc);
	if (FUNC1(priv_ep)) {
		FUNC4(priv_dev->dev, "no available ep\n");
		return NULL;
	}

	FUNC3(priv_dev->dev, "match endpoint: %s\n", priv_ep->name);

	FUNC6(&priv_dev->lock, flags);
	priv_ep->endpoint.desc = desc;
	priv_ep->dir  = FUNC8(desc) ? USB_DIR_IN : USB_DIR_OUT;
	priv_ep->type = FUNC9(desc);
	priv_ep->flags |= EP_CLAIMED;
	priv_ep->interval = desc->bInterval ? FUNC0(desc->bInterval - 1) : 0;

	FUNC7(&priv_dev->lock, flags);
	return &priv_ep->endpoint;
}
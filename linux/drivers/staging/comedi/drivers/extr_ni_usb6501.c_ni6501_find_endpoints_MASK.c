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
struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_3__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct ni6501_private {struct usb_endpoint_descriptor* ep_tx; struct usb_endpoint_descriptor* ep_rx; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; struct ni6501_private* private; } ;
struct TYPE_4__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int ENODEV ; 
 struct usb_interface* FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC3 (struct usb_endpoint_descriptor*) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev)
{
	struct usb_interface *intf = FUNC0(dev);
	struct ni6501_private *devpriv = dev->private;
	struct usb_host_interface *iface_desc = intf->cur_altsetting;
	struct usb_endpoint_descriptor *ep_desc;
	int i;

	if (iface_desc->desc.bNumEndpoints != 2) {
		FUNC1(dev->class_dev, "Wrong number of endpoints\n");
		return -ENODEV;
	}

	for (i = 0; i < iface_desc->desc.bNumEndpoints; i++) {
		ep_desc = &iface_desc->endpoint[i].desc;

		if (FUNC2(ep_desc)) {
			if (!devpriv->ep_rx)
				devpriv->ep_rx = ep_desc;
			continue;
		}

		if (FUNC3(ep_desc)) {
			if (!devpriv->ep_tx)
				devpriv->ep_tx = ep_desc;
			continue;
		}
	}

	if (!devpriv->ep_rx || !devpriv->ep_tx)
		return -ENODEV;

	return 0;
}
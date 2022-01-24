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
struct vmk80xx_private {int* usb_tx_buf; scalar_t__ model; struct usb_endpoint_descriptor* ep_tx; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_device {int dummy; } ;
struct comedi_device {struct vmk80xx_private* private; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ VMK8061_MODEL ; 
 struct usb_device* FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_endpoint_descriptor*) ; 
 int FUNC2 (struct usb_device*,unsigned int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev, int cmd)
{
	struct vmk80xx_private *devpriv = dev->private;
	struct usb_device *usb = FUNC0(dev);
	struct usb_endpoint_descriptor *ep;
	unsigned int pipe;

	devpriv->usb_tx_buf[0] = cmd;

	if (devpriv->model == VMK8061_MODEL) {
		FUNC4(dev);
		return 0;
	}

	ep = devpriv->ep_tx;
	pipe = FUNC3(usb, ep->bEndpointAddress);
	return FUNC2(usb, pipe, devpriv->usb_tx_buf,
				 FUNC1(ep), NULL,
				 HZ * 10);
}
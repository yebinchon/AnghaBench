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
struct usbduxfast_private {int /*<<< orphan*/  urb; int /*<<< orphan*/  inbuf; } ;
struct usb_device {int dummy; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; struct usbduxfast_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  BULKINEP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  SIZEINBUF ; 
 struct usb_device* FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usbduxfast_ai_interrupt ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev)
{
	struct usb_device *usb = FUNC0(dev);
	struct usbduxfast_private *devpriv = dev->private;
	int ret;

	FUNC2(devpriv->urb, usb, FUNC3(usb, BULKINEP),
			  devpriv->inbuf, SIZEINBUF,
			  usbduxfast_ai_interrupt, dev);

	ret = FUNC4(devpriv->urb, GFP_ATOMIC);
	if (ret) {
		FUNC1(dev->class_dev, "usb_submit_urb error %d\n", ret);
		return ret;
	}
	return 0;
}
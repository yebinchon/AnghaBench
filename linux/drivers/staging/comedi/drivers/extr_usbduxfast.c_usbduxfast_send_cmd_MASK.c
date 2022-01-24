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
struct usbduxfast_private {int* duxbuf; } ;
struct usb_device {int dummy; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; struct usbduxfast_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNELLISTEP ; 
 int /*<<< orphan*/  SIZEOFDUXBUF ; 
 struct usb_device* FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct usb_device*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev, int cmd_type)
{
	struct usb_device *usb = FUNC0(dev);
	struct usbduxfast_private *devpriv = dev->private;
	int nsent;
	int ret;

	devpriv->duxbuf[0] = cmd_type;

	ret = FUNC2(usb, FUNC3(usb, CHANNELLISTEP),
			   devpriv->duxbuf, SIZEOFDUXBUF,
			   &nsent, 10000);
	if (ret < 0)
		FUNC1(dev->class_dev,
			"could not transmit command to the usb-device, err=%d\n",
			ret);
	return ret;
}
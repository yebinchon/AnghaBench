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
struct usbdux_private {unsigned int* dux_commands; } ;
struct usb_device {int dummy; } ;
struct comedi_device {struct usbdux_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  BULK_TIMEOUT ; 
 int /*<<< orphan*/  SIZEOFDUXBUFFER ; 
 struct usb_device* FUNC0 (struct comedi_device*) ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev, unsigned int cmd_type)
{
	struct usb_device *usb = FUNC0(dev);
	struct usbdux_private *devpriv = dev->private;
	int nsent;

	devpriv->dux_commands[0] = cmd_type;

	return FUNC1(usb, FUNC2(usb, 1),
			    devpriv->dux_commands, SIZEOFDUXBUFFER,
			    &nsent, BULK_TIMEOUT);
}
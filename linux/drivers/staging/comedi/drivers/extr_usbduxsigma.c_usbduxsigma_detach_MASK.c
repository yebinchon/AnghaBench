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
struct usbduxsigma_private {int /*<<< orphan*/  mut; } ;
struct usb_interface {int dummy; } ;
struct comedi_device {struct usbduxsigma_private* private; } ;

/* Variables and functions */
 struct usb_interface* FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*,int) ; 

__attribute__((used)) static void FUNC9(struct comedi_device *dev)
{
	struct usb_interface *intf = FUNC0(dev);
	struct usbduxsigma_private *devpriv = dev->private;

	FUNC4(intf, NULL);

	if (!devpriv)
		return;

	FUNC2(&devpriv->mut);

	/* force unlink all urbs */
	FUNC5(dev, 1);
	FUNC6(dev, 1);
	FUNC8(dev, 1);

	FUNC7(dev);

	FUNC3(&devpriv->mut);

	FUNC1(&devpriv->mut);
}
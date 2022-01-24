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
struct usbduxfast_private {int /*<<< orphan*/  mut; int /*<<< orphan*/  duxbuf; scalar_t__ urb; int /*<<< orphan*/  inbuf; } ;
struct usb_interface {int dummy; } ;
struct comedi_device {struct usbduxfast_private* private; } ;

/* Variables and functions */
 struct usb_interface* FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct comedi_device *dev)
{
	struct usb_interface *intf = FUNC0(dev);
	struct usbduxfast_private *devpriv = dev->private;

	if (!devpriv)
		return;

	FUNC3(&devpriv->mut);

	FUNC7(intf, NULL);

	if (devpriv->urb) {
		/* waits until a running transfer is over */
		FUNC6(devpriv->urb);

		FUNC1(devpriv->inbuf);
		FUNC5(devpriv->urb);
	}

	FUNC1(devpriv->duxbuf);

	FUNC4(&devpriv->mut);

	FUNC2(&devpriv->mut);
}
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
struct usb_interface {int dummy; } ;
struct dt9812_private {int /*<<< orphan*/  mut; } ;
struct comedi_device {struct dt9812_private* private; } ;

/* Variables and functions */
 struct usb_interface* FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev)
{
	struct usb_interface *intf = FUNC0(dev);
	struct dt9812_private *devpriv = dev->private;

	if (!devpriv)
		return;

	FUNC1(&devpriv->mut);
	FUNC2(intf, NULL);
}
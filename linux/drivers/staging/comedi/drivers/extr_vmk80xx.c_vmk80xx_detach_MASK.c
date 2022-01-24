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
struct vmk80xx_private {int /*<<< orphan*/  limit_sem; int /*<<< orphan*/  usb_tx_buf; int /*<<< orphan*/  usb_rx_buf; } ;
struct usb_interface {int dummy; } ;
struct comedi_device {struct vmk80xx_private* private; } ;

/* Variables and functions */
 struct usb_interface* FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev)
{
	struct usb_interface *intf = FUNC0(dev);
	struct vmk80xx_private *devpriv = dev->private;

	if (!devpriv)
		return;

	FUNC1(&devpriv->limit_sem);

	FUNC4(intf, NULL);

	FUNC2(devpriv->usb_rx_buf);
	FUNC2(devpriv->usb_tx_buf);

	FUNC3(&devpriv->limit_sem);
}
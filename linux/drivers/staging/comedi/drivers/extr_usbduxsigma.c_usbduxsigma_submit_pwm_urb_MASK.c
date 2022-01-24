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
struct usbduxsigma_private {int /*<<< orphan*/  pwm_buf_sz; struct urb* pwm_urb; } ;
struct usb_device {int dummy; } ;
struct urb {int /*<<< orphan*/  transfer_buffer; } ;
struct comedi_device {struct usbduxsigma_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct usb_device* FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct urb*,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int) ; 
 int FUNC3 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usbduxsigma_pwm_urb_complete ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev)
{
	struct usb_device *usb = FUNC0(dev);
	struct usbduxsigma_private *devpriv = dev->private;
	struct urb *urb = devpriv->pwm_urb;

	/* in case of a resubmission after an unlink... */
	FUNC1(urb, usb, FUNC2(usb, 4),
			  urb->transfer_buffer, devpriv->pwm_buf_sz,
			  usbduxsigma_pwm_urb_complete, dev);

	return FUNC3(urb, GFP_ATOMIC);
}
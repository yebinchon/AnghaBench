#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usbdux_private {int n_ai_urbs; int n_ao_urbs; void* pwm_buf_sz; struct urb* pwm_urb; scalar_t__ high_speed; struct urb** ao_urbs; struct urb** ai_urbs; void* insn_buf; void* in_buf; void* dux_commands; } ;
struct usb_device {int dummy; } ;
struct urb {int number_of_packets; int interval; void* transfer_buffer; TYPE_1__* iso_frame_desc; void* transfer_buffer_length; int /*<<< orphan*/  complete; void* transfer_flags; int /*<<< orphan*/  pipe; struct comedi_device* context; struct usb_device* dev; } ;
struct comedi_device {struct usbdux_private* private; } ;
struct TYPE_2__ {void* length; scalar_t__ offset; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* SIZEINBUF ; 
 void* SIZEINSNBUF ; 
 void* SIZEOFDUXBUFFER ; 
 void* SIZEOUTBUF ; 
 void* URB_ISO_ASAP ; 
 struct usb_device* FUNC0 (struct comedi_device*) ; 
 void* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*,int /*<<< orphan*/ ) ; 
 struct urb* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*,int) ; 
 int /*<<< orphan*/  usbduxsub_ai_isoc_irq ; 
 int /*<<< orphan*/  usbduxsub_ao_isoc_irq ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev)
{
	struct usb_device *usb = FUNC0(dev);
	struct usbdux_private *devpriv = dev->private;
	struct urb *urb;
	int i;

	devpriv->dux_commands = FUNC2(SIZEOFDUXBUFFER, GFP_KERNEL);
	devpriv->in_buf = FUNC2(SIZEINBUF, GFP_KERNEL);
	devpriv->insn_buf = FUNC2(SIZEINSNBUF, GFP_KERNEL);
	devpriv->ai_urbs = FUNC1(devpriv->n_ai_urbs, sizeof(void *),
				   GFP_KERNEL);
	devpriv->ao_urbs = FUNC1(devpriv->n_ao_urbs, sizeof(void *),
				   GFP_KERNEL);
	if (!devpriv->dux_commands || !devpriv->in_buf || !devpriv->insn_buf ||
	    !devpriv->ai_urbs || !devpriv->ao_urbs)
		return -ENOMEM;

	for (i = 0; i < devpriv->n_ai_urbs; i++) {
		/* one frame: 1ms */
		urb = FUNC3(1, GFP_KERNEL);
		if (!urb)
			return -ENOMEM;
		devpriv->ai_urbs[i] = urb;

		urb->dev = usb;
		urb->context = dev;
		urb->pipe = FUNC4(usb, 6);
		urb->transfer_flags = URB_ISO_ASAP;
		urb->transfer_buffer = FUNC2(SIZEINBUF, GFP_KERNEL);
		if (!urb->transfer_buffer)
			return -ENOMEM;

		urb->complete = usbduxsub_ai_isoc_irq;
		urb->number_of_packets = 1;
		urb->transfer_buffer_length = SIZEINBUF;
		urb->iso_frame_desc[0].offset = 0;
		urb->iso_frame_desc[0].length = SIZEINBUF;
	}

	for (i = 0; i < devpriv->n_ao_urbs; i++) {
		/* one frame: 1ms */
		urb = FUNC3(1, GFP_KERNEL);
		if (!urb)
			return -ENOMEM;
		devpriv->ao_urbs[i] = urb;

		urb->dev = usb;
		urb->context = dev;
		urb->pipe = FUNC5(usb, 2);
		urb->transfer_flags = URB_ISO_ASAP;
		urb->transfer_buffer = FUNC2(SIZEOUTBUF, GFP_KERNEL);
		if (!urb->transfer_buffer)
			return -ENOMEM;

		urb->complete = usbduxsub_ao_isoc_irq;
		urb->number_of_packets = 1;
		urb->transfer_buffer_length = SIZEOUTBUF;
		urb->iso_frame_desc[0].offset = 0;
		urb->iso_frame_desc[0].length = SIZEOUTBUF;
		if (devpriv->high_speed)
			urb->interval = 8;	/* uframes */
		else
			urb->interval = 1;	/* frames */
	}

	/* pwm */
	if (devpriv->pwm_buf_sz) {
		urb = FUNC3(0, GFP_KERNEL);
		if (!urb)
			return -ENOMEM;
		devpriv->pwm_urb = urb;

		/* max bulk ep size in high speed */
		urb->transfer_buffer = FUNC2(devpriv->pwm_buf_sz,
					       GFP_KERNEL);
		if (!urb->transfer_buffer)
			return -ENOMEM;
	}

	return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usbduxfast_private {void* inbuf; int /*<<< orphan*/  urb; void* duxbuf; int /*<<< orphan*/  mut; } ;
struct usb_interface {TYPE_2__* altsetting; } ;
struct usb_device {scalar_t__ speed; int /*<<< orphan*/  dev; } ;
struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int len_chanlist; int /*<<< orphan*/  cancel; int /*<<< orphan*/  do_cmd; int /*<<< orphan*/  do_cmdtest; int /*<<< orphan*/  insn_read; int /*<<< orphan*/ * range_table; int /*<<< orphan*/  type; } ;
struct comedi_device {struct comedi_subdevice* read_subdev; struct comedi_subdevice* subdevices; int /*<<< orphan*/  class_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  bInterfaceNumber; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_SUBD_AI ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FIRMWARE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SDF_CMD_READ ; 
 int SDF_GROUND ; 
 int SDF_READABLE ; 
 int /*<<< orphan*/  SIZEINBUF ; 
 int /*<<< orphan*/  SIZEOFDUXBUF ; 
 scalar_t__ USB_SPEED_HIGH ; 
 struct usbduxfast_private* FUNC0 (struct comedi_device*,int) ; 
 int FUNC1 (struct comedi_device*,int) ; 
 int FUNC2 (struct comedi_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC3 (struct comedi_device*) ; 
 struct usb_interface* FUNC4 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  range_usbduxfast_ai_range ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct usb_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_interface*,struct usbduxfast_private*) ; 
 int /*<<< orphan*/  usbduxfast_ai_cancel ; 
 int /*<<< orphan*/  usbduxfast_ai_cmd ; 
 int /*<<< orphan*/  usbduxfast_ai_cmdtest ; 
 int /*<<< orphan*/  usbduxfast_ai_insn_read ; 
 int /*<<< orphan*/  usbduxfast_upload_firmware ; 

__attribute__((used)) static int FUNC11(struct comedi_device *dev,
				  unsigned long context_unused)
{
	struct usb_interface *intf = FUNC4(dev);
	struct usb_device *usb = FUNC3(dev);
	struct usbduxfast_private *devpriv;
	struct comedi_subdevice *s;
	int ret;

	if (usb->speed != USB_SPEED_HIGH) {
		FUNC5(dev->class_dev,
			"This driver needs USB 2.0 to operate. Aborting...\n");
		return -ENODEV;
	}

	devpriv = FUNC0(dev, sizeof(*devpriv));
	if (!devpriv)
		return -ENOMEM;

	FUNC7(&devpriv->mut);
	FUNC10(intf, devpriv);

	devpriv->duxbuf = FUNC6(SIZEOFDUXBUF, GFP_KERNEL);
	if (!devpriv->duxbuf)
		return -ENOMEM;

	ret = FUNC9(usb,
				intf->altsetting->desc.bInterfaceNumber, 1);
	if (ret < 0) {
		FUNC5(dev->class_dev,
			"could not switch to alternate setting 1\n");
		return -ENODEV;
	}

	devpriv->urb = FUNC8(0, GFP_KERNEL);
	if (!devpriv->urb)
		return -ENOMEM;

	devpriv->inbuf = FUNC6(SIZEINBUF, GFP_KERNEL);
	if (!devpriv->inbuf)
		return -ENOMEM;

	ret = FUNC2(dev, &usb->dev, FIRMWARE,
				   usbduxfast_upload_firmware, 0);
	if (ret)
		return ret;

	ret = FUNC1(dev, 1);
	if (ret)
		return ret;

	/* Analog Input subdevice */
	s = &dev->subdevices[0];
	dev->read_subdev = s;
	s->type		= COMEDI_SUBD_AI;
	s->subdev_flags	= SDF_READABLE | SDF_GROUND | SDF_CMD_READ;
	s->n_chan	= 16;
	s->maxdata	= 0x1000;	/* 12-bit + 1 overflow bit */
	s->range_table	= &range_usbduxfast_ai_range;
	s->insn_read	= usbduxfast_ai_insn_read;
	s->len_chanlist	= s->n_chan;
	s->do_cmdtest	= usbduxfast_ai_cmdtest;
	s->do_cmd	= usbduxfast_ai_cmd;
	s->cancel	= usbduxfast_ai_cancel;

	return 0;
}
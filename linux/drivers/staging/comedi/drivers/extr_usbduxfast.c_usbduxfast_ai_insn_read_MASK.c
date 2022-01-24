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
typedef  int u8 ;
typedef  unsigned int u16 ;
struct usbduxfast_private {int /*<<< orphan*/  mut; scalar_t__ inbuf; scalar_t__ ai_cmd_running; } ;
struct usb_device {int dummy; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; struct usbduxfast_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  BULKINEP ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int EINVAL ; 
 int PACKETS_TO_IGNORE ; 
 int /*<<< orphan*/  SENDADCOMMANDS ; 
 int /*<<< orphan*/  SIZEINBUF ; 
 struct usb_device* FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct usb_device*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*,int,int,int,int,int) ; 
 int FUNC9 (struct comedi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct comedi_device *dev,
				   struct comedi_subdevice *s,
				   struct comedi_insn *insn,
				   unsigned int *data)
{
	struct usb_device *usb = FUNC2(dev);
	struct usbduxfast_private *devpriv = dev->private;
	unsigned int chan = FUNC0(insn->chanspec);
	unsigned int range = FUNC1(insn->chanspec);
	u8 rngmask = range ? (0xff - 0x04) : 0xff;
	int i, j, n, actual_length;
	int ret;

	FUNC4(&devpriv->mut);

	if (devpriv->ai_cmd_running) {
		FUNC3(dev->class_dev,
			"ai_insn_read not possible, async cmd is running\n");
		FUNC5(&devpriv->mut);
		return -EBUSY;
	}

	/* set command for the first channel */

	/* commit data to the FIFO */
	/* data */
	FUNC8(dev, 0, 0x01, 0x02, rngmask, 0x00);

	/* do the first part of the delay */
	FUNC8(dev, 1, 0x0c, 0x00, 0xfe & rngmask, 0x00);
	FUNC8(dev, 2, 0x01, 0x00, 0xfe & rngmask, 0x00);
	FUNC8(dev, 3, 0x01, 0x00, 0xfe & rngmask, 0x00);
	FUNC8(dev, 4, 0x01, 0x00, 0xfe & rngmask, 0x00);

	/* second part */
	FUNC8(dev, 5, 0x0c, 0x00, rngmask, 0x00);
	FUNC8(dev, 6, 0x01, 0x00, rngmask, 0x00);

	ret = FUNC9(dev, SENDADCOMMANDS);
	if (ret < 0) {
		FUNC5(&devpriv->mut);
		return ret;
	}

	for (i = 0; i < PACKETS_TO_IGNORE; i++) {
		ret = FUNC6(usb, FUNC7(usb, BULKINEP),
				   devpriv->inbuf, SIZEINBUF,
				   &actual_length, 10000);
		if (ret < 0) {
			FUNC3(dev->class_dev, "insn timeout, no data\n");
			FUNC5(&devpriv->mut);
			return ret;
		}
	}

	for (i = 0; i < insn->n;) {
		ret = FUNC6(usb, FUNC7(usb, BULKINEP),
				   devpriv->inbuf, SIZEINBUF,
				   &actual_length, 10000);
		if (ret < 0) {
			FUNC3(dev->class_dev, "insn data error: %d\n", ret);
			FUNC5(&devpriv->mut);
			return ret;
		}
		n = actual_length / sizeof(u16);
		if ((n % 16) != 0) {
			FUNC3(dev->class_dev, "insn data packet corrupted\n");
			FUNC5(&devpriv->mut);
			return -EINVAL;
		}
		for (j = chan; (j < n) && (i < insn->n); j = j + 16) {
			data[i] = ((u16 *)(devpriv->inbuf))[j];
			i++;
		}
	}

	FUNC5(&devpriv->mut);

	return insn->n;
}
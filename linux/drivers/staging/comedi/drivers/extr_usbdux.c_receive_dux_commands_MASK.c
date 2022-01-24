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
struct usbdux_private {int /*<<< orphan*/ * insn_buf; } ;
struct usb_device {int dummy; } ;
struct comedi_device {struct usbdux_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  BULK_TIMEOUT ; 
 int EFAULT ; 
 int RETRIES ; 
 int /*<<< orphan*/  SIZEINSNBUF ; 
 struct usb_device* FUNC0 (struct comedi_device*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev, unsigned int command)
{
	struct usb_device *usb = FUNC0(dev);
	struct usbdux_private *devpriv = dev->private;
	int ret;
	int nrec;
	int i;

	for (i = 0; i < RETRIES; i++) {
		ret = FUNC2(usb, FUNC3(usb, 8),
				   devpriv->insn_buf, SIZEINSNBUF,
				   &nrec, BULK_TIMEOUT);
		if (ret < 0)
			return ret;
		if (FUNC1(devpriv->insn_buf[0]) == command)
			return ret;
	}
	/* command not received */
	return -EFAULT;
}
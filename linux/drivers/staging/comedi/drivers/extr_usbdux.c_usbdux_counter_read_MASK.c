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
struct usbdux_private {int /*<<< orphan*/  mut; int /*<<< orphan*/ * insn_buf; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {struct usbdux_private* private; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USBDUX_CMD_TIMER_RD ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct comedi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn,
			       unsigned int *data)
{
	struct usbdux_private *devpriv = dev->private;
	unsigned int chan = FUNC0(insn->chanspec);
	int ret = 0;
	int i;

	FUNC2(&devpriv->mut);

	for (i = 0; i < insn->n; i++) {
		ret = FUNC5(dev, USBDUX_CMD_TIMER_RD);
		if (ret < 0)
			goto counter_read_exit;
		ret = FUNC4(dev, USBDUX_CMD_TIMER_RD);
		if (ret < 0)
			goto counter_read_exit;

		data[i] = FUNC1(devpriv->insn_buf[chan + 1]);
	}

counter_read_exit:
	FUNC3(&devpriv->mut);

	return ret ? ret : insn->n;
}
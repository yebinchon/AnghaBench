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
struct usbduxsigma_private {int* dux_commands; int /*<<< orphan*/  mut; scalar_t__ ao_cmd_running; } ;
struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {struct usbduxsigma_private* private; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int /*<<< orphan*/  USBDUXSIGMA_DA_CMD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct comedi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
				     struct comedi_subdevice *s,
				     struct comedi_insn *insn,
				     unsigned int *data)
{
	struct usbduxsigma_private *devpriv = dev->private;
	unsigned int chan = FUNC0(insn->chanspec);
	int ret;
	int i;

	FUNC1(&devpriv->mut);
	if (devpriv->ao_cmd_running) {
		FUNC2(&devpriv->mut);
		return -EBUSY;
	}

	for (i = 0; i < insn->n; i++) {
		devpriv->dux_commands[1] = 1;		/* num channels */
		devpriv->dux_commands[2] = data[i];	/* value */
		devpriv->dux_commands[3] = chan;	/* channel number */
		ret = FUNC3(dev, USBDUXSIGMA_DA_CMD);
		if (ret < 0) {
			FUNC2(&devpriv->mut);
			return ret;
		}
		s->readback[chan] = data[i];
	}
	FUNC2(&devpriv->mut);

	return insn->n;
}
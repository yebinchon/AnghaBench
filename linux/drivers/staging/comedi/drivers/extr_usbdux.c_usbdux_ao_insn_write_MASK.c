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
struct usbdux_private {int* dux_commands; int /*<<< orphan*/  mut; scalar_t__ ao_cmd_running; } ;
struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {struct usbdux_private* private; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int /*<<< orphan*/  USBDUX_CMD_AO ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct comedi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn,
				unsigned int *data)
{
	struct usbdux_private *devpriv = dev->private;
	unsigned int chan = FUNC0(insn->chanspec);
	__le16 *p = (__le16 *)&devpriv->dux_commands[2];
	int ret = -EBUSY;
	int i;

	FUNC2(&devpriv->mut);

	if (devpriv->ao_cmd_running)
		goto ao_write_exit;

	/* number of channels: 1 */
	devpriv->dux_commands[1] = 1;
	/* channel number */
	devpriv->dux_commands[4] = chan << 6;

	for (i = 0; i < insn->n; i++) {
		unsigned int val = data[i];

		/* one 16 bit value */
		*p = FUNC1(val);

		ret = FUNC4(dev, USBDUX_CMD_AO);
		if (ret < 0)
			goto ao_write_exit;

		s->readback[chan] = val;
	}

ao_write_exit:
	FUNC3(&devpriv->mut);

	return ret ? ret : insn->n;
}
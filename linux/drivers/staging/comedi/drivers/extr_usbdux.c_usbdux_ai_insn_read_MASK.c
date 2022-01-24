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
struct usbdux_private {int /*<<< orphan*/  mut; int /*<<< orphan*/ * insn_buf; int /*<<< orphan*/ * dux_commands; scalar_t__ ai_cmd_running; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {struct usbdux_private* private; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int /*<<< orphan*/  USBDUX_CMD_SINGLE_AI ; 
 unsigned int FUNC2 (struct comedi_subdevice*,unsigned int) ; 
 scalar_t__ FUNC3 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct comedi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn,
			       unsigned int *data)
{
	struct usbdux_private *devpriv = dev->private;
	unsigned int chan = FUNC0(insn->chanspec);
	unsigned int range = FUNC1(insn->chanspec);
	unsigned int val;
	int ret = -EBUSY;
	int i;

	FUNC6(&devpriv->mut);

	if (devpriv->ai_cmd_running)
		goto ai_read_exit;

	/* set command for the first channel */
	devpriv->dux_commands[1] = FUNC4(chan, range);

	/* adc commands */
	ret = FUNC9(dev, USBDUX_CMD_SINGLE_AI);
	if (ret < 0)
		goto ai_read_exit;

	for (i = 0; i < insn->n; i++) {
		ret = FUNC8(dev, USBDUX_CMD_SINGLE_AI);
		if (ret < 0)
			goto ai_read_exit;

		val = FUNC5(devpriv->insn_buf[1]);

		/* bipolar data is two's-complement */
		if (FUNC3(s, range))
			val = FUNC2(s, val);

		data[i] = val;
	}

ai_read_exit:
	FUNC7(&devpriv->mut);

	return ret ? ret : insn->n;
}
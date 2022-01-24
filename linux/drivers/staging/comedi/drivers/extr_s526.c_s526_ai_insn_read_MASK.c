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
struct s526_private {unsigned int ai_ctrl; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; struct s526_private* private; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int S526_AI_CTRL_DELAY ; 
 unsigned int FUNC2 (unsigned int) ; 
 scalar_t__ S526_AI_CTRL_REG ; 
 unsigned int S526_AI_CTRL_START ; 
 scalar_t__ S526_AI_REG ; 
 int /*<<< orphan*/  S526_INT_AI ; 
 unsigned int FUNC3 (struct comedi_subdevice*,unsigned int) ; 
 int FUNC4 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  s526_eoc ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev,
			     struct comedi_subdevice *s,
			     struct comedi_insn *insn,
			     unsigned int *data)
{
	struct s526_private *devpriv = dev->private;
	unsigned int chan = FUNC0(insn->chanspec);
	unsigned int ctrl;
	unsigned int val;
	int ret;
	int i;

	ctrl = FUNC1(chan) | FUNC2(chan) |
	       S526_AI_CTRL_START;
	if (ctrl != devpriv->ai_ctrl) {
		/*
		 * The multiplexor needs to change, enable the 15us
		 * delay for the first sample.
		 */
		devpriv->ai_ctrl = ctrl;
		ctrl |= S526_AI_CTRL_DELAY;
	}

	for (i = 0; i < insn->n; i++) {
		/* trigger conversion */
		FUNC6(ctrl, dev->iobase + S526_AI_CTRL_REG);
		ctrl &= ~S526_AI_CTRL_DELAY;

		/* wait for conversion to end */
		ret = FUNC4(dev, s, insn, s526_eoc, S526_INT_AI);
		if (ret)
			return ret;

		val = FUNC5(dev->iobase + S526_AI_REG);
		data[i] = FUNC3(s, val);
	}

	return insn->n;
}
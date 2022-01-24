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
struct daqp_private {scalar_t__ stop; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; struct daqp_private* private; } ;

/* Variables and functions */
 scalar_t__ DAQP_AUX_REG ; 
 int DAQP_CMD_ARM ; 
 int DAQP_CMD_FIFO_DATA ; 
 scalar_t__ DAQP_CMD_REG ; 
 int DAQP_CMD_RSTF ; 
 int DAQP_CMD_RSTQ ; 
 int DAQP_CMD_STOP ; 
 int DAQP_CTRL_PACER_CLK_100KHZ ; 
 scalar_t__ DAQP_CTRL_REG ; 
 scalar_t__ DAQP_STATUS_REG ; 
 int EIO ; 
 int FUNC0 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  daqp_ai_eos ; 
 unsigned int FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
			     struct comedi_subdevice *s,
			     struct comedi_insn *insn,
			     unsigned int *data)
{
	struct daqp_private *devpriv = dev->private;
	int ret = 0;
	int i;

	if (devpriv->stop)
		return -EIO;

	FUNC5(0, dev->iobase + DAQP_AUX_REG);

	/* Reset scan list queue */
	FUNC5(DAQP_CMD_RSTQ, dev->iobase + DAQP_CMD_REG);

	/* Program one scan list entry */
	FUNC2(dev, insn->chanspec, 1);

	/* Reset data FIFO (see page 28 of DAQP User's Manual) */
	FUNC5(DAQP_CMD_RSTF, dev->iobase + DAQP_CMD_REG);

	/* Set trigger - one-shot, internal, no interrupts */
	FUNC5(DAQP_CTRL_PACER_CLK_100KHZ, dev->iobase + DAQP_CTRL_REG);

	ret = FUNC3(dev, 10000);
	if (ret)
		return ret;

	for (i = 0; i < insn->n; i++) {
		/* Start conversion */
		FUNC5(DAQP_CMD_ARM | DAQP_CMD_FIFO_DATA,
		     dev->iobase + DAQP_CMD_REG);

		ret = FUNC0(dev, s, insn, daqp_ai_eos, 0);
		if (ret)
			break;

		/* clear the status event flags */
		FUNC4(dev->iobase + DAQP_STATUS_REG);

		data[i] = FUNC1(dev, s);
	}

	/* stop any conversions and clear the status event flags */
	FUNC5(DAQP_CMD_STOP, dev->iobase + DAQP_CMD_REG);
	FUNC4(dev->iobase + DAQP_STATUS_REG);

	return ret ? ret : insn->n;
}
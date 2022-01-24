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
struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; struct daqp_private* private; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DAQP_AO_REG ; 
 scalar_t__ DAQP_AUX_REG ; 
 int EIO ; 
 unsigned int FUNC1 (struct comedi_subdevice*,unsigned int) ; 
 int FUNC2 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  daqp_ao_empty ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
			      struct comedi_subdevice *s,
			      struct comedi_insn *insn,
			      unsigned int *data)
{
	struct daqp_private *devpriv = dev->private;
	unsigned int chan = FUNC0(insn->chanspec);
	int i;

	if (devpriv->stop)
		return -EIO;

	/* Make sure D/A update mode is direct update */
	FUNC3(0, dev->iobase + DAQP_AUX_REG);

	for (i = 0; i < insn->n; i++) {
		unsigned int val = data[i];
		int ret;

		/* D/A transfer rate is about 8ms */
		ret = FUNC2(dev, s, insn, daqp_ao_empty, 0);
		if (ret)
			return ret;

		/* write the two's complement value to the channel */
		FUNC4((chan << 12) | FUNC1(s, val),
		     dev->iobase + DAQP_AO_REG);

		s->readback[chan] = val;
	}

	return insn->n;
}
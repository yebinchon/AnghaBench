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
struct dt282x_private {int dacsr; unsigned int supcsr; } ;
struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; struct dt282x_private* private; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ DT2821_DACSR_REG ; 
 int DT2821_DACSR_SSEL ; 
 int FUNC2 (unsigned int) ; 
 scalar_t__ DT2821_DADAT_REG ; 
 unsigned int DT2821_SUPCSR_DACON ; 
 scalar_t__ DT2821_SUPCSR_REG ; 
 unsigned int FUNC3 (struct comedi_subdevice*,unsigned int) ; 
 scalar_t__ FUNC4 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn,
				unsigned int *data)
{
	struct dt282x_private *devpriv = dev->private;
	unsigned int chan = FUNC0(insn->chanspec);
	unsigned int range = FUNC1(insn->chanspec);
	int i;

	devpriv->dacsr |= DT2821_DACSR_SSEL | FUNC2(chan);

	for (i = 0; i < insn->n; i++) {
		unsigned int val = data[i];

		s->readback[chan] = val;

		if (FUNC4(s, range))
			val = FUNC3(s, val);

		FUNC5(devpriv->dacsr, dev->iobase + DT2821_DACSR_REG);

		FUNC5(val, dev->iobase + DT2821_DADAT_REG);

		FUNC5(devpriv->supcsr | DT2821_SUPCSR_DACON,
		     dev->iobase + DT2821_SUPCSR_REG);
	}

	return insn->n;
}
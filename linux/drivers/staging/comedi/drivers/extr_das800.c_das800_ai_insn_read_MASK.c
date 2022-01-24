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
struct das800_private {unsigned int do_bits; } ;
struct comedi_subdevice {int maxdata; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; int /*<<< orphan*/  spinlock; struct das800_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL1 ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ DAS800_GAIN ; 
 scalar_t__ DAS800_MSB ; 
 int FUNC2 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  das800_ai_eoc ; 
 unsigned int FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn,
			       unsigned int *data)
{
	struct das800_private *devpriv = dev->private;
	unsigned int chan = FUNC0(insn->chanspec);
	unsigned int range = FUNC1(insn->chanspec);
	unsigned long irq_flags;
	unsigned int val;
	int ret;
	int i;

	FUNC4(dev);

	/* set multiplexer */
	FUNC8(&dev->spinlock, irq_flags);
	FUNC5(dev, chan | devpriv->do_bits, CONTROL1);
	FUNC9(&dev->spinlock, irq_flags);

	/* set gain / range */
	if (s->maxdata == 0x0fff && range)
		range += 0x7;
	range &= 0xf;
	FUNC6(range, dev->iobase + DAS800_GAIN);

	FUNC10(5);

	for (i = 0; i < insn->n; i++) {
		/* trigger conversion */
		FUNC7(0, dev->iobase + DAS800_MSB);

		ret = FUNC2(dev, s, insn, das800_ai_eoc, 0);
		if (ret)
			return ret;

		val = FUNC3(dev);
		if (s->maxdata == 0x0fff)
			val >>= 4;	/* 12-bit sample */
		data[i] = val & s->maxdata;
	}

	return insn->n;
}
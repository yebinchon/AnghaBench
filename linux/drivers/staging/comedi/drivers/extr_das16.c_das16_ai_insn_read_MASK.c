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
struct comedi_subdevice {int maxdata; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ DAS16_AI_LSB_REG ; 
 scalar_t__ DAS16_AI_MSB_REG ; 
 scalar_t__ DAS16_TRIG_REG ; 
 int FUNC2 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  das16_ai_eoc ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,unsigned int,unsigned int,unsigned int) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
			      struct comedi_subdevice *s,
			      struct comedi_insn *insn,
			      unsigned int *data)
{
	unsigned int chan = FUNC0(insn->chanspec);
	unsigned int range = FUNC1(insn->chanspec);
	unsigned int val;
	int ret;
	int i;

	/* set mux and range for single channel */
	FUNC3(dev, chan, chan, range);

	for (i = 0; i < insn->n; i++) {
		/* trigger conversion */
		FUNC5(0, dev->iobase + DAS16_TRIG_REG);

		ret = FUNC2(dev, s, insn, das16_ai_eoc, 0);
		if (ret)
			return ret;

		val = FUNC4(dev->iobase + DAS16_AI_MSB_REG) << 8;
		val |= FUNC4(dev->iobase + DAS16_AI_LSB_REG);
		if (s->maxdata == 0x0fff)
			val >>= 4;
		val &= s->maxdata;

		data[i] = val;
	}

	return insn->n;
}
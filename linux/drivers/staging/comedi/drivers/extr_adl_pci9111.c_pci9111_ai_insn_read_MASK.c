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
struct comedi_subdevice {unsigned int maxdata; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PCI9111_AI_CHANNEL_REG ; 
 scalar_t__ PCI9111_AI_FIFO_REG ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int PCI9111_AI_RANGE_MASK ; 
 scalar_t__ PCI9111_AI_RANGE_STAT_REG ; 
 scalar_t__ PCI9111_SOFT_TRIG_REG ; 
 int FUNC3 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 unsigned int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  pci9111_ai_eoc ; 
 int /*<<< orphan*/  FUNC7 (struct comedi_device*) ; 

__attribute__((used)) static int FUNC8(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn, unsigned int *data)
{
	unsigned int chan = FUNC0(insn->chanspec);
	unsigned int range = FUNC1(insn->chanspec);
	unsigned int maxdata = s->maxdata;
	unsigned int invert = (maxdata + 1) >> 1;
	unsigned int shift = (maxdata == 0xffff) ? 0 : 4;
	unsigned int status;
	int ret;
	int i;

	FUNC6(chan, dev->iobase + PCI9111_AI_CHANNEL_REG);

	status = FUNC4(dev->iobase + PCI9111_AI_RANGE_STAT_REG);
	if ((status & PCI9111_AI_RANGE_MASK) != range) {
		FUNC6(FUNC2(range),
		     dev->iobase + PCI9111_AI_RANGE_STAT_REG);
	}

	FUNC7(dev);

	for (i = 0; i < insn->n; i++) {
		/* Generate a software trigger */
		FUNC6(0, dev->iobase + PCI9111_SOFT_TRIG_REG);

		ret = FUNC3(dev, s, insn, pci9111_ai_eoc, 0);
		if (ret) {
			FUNC7(dev);
			return ret;
		}

		data[i] = FUNC5(dev->iobase + PCI9111_AI_FIFO_REG);
		data[i] = ((data[i] >> shift) & maxdata) ^ invert;
	}

	return i;
}
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
 scalar_t__ MULTIQ3_AI_CONV_REG ; 
 scalar_t__ MULTIQ3_AI_REG ; 
 int FUNC1 (unsigned int) ; 
 int MULTIQ3_CTRL_EN ; 
 int /*<<< orphan*/  MULTIQ3_STATUS_EOC ; 
 int /*<<< orphan*/  MULTIQ3_STATUS_EOC_I ; 
 unsigned int FUNC2 (struct comedi_subdevice*,unsigned int) ; 
 int FUNC3 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  multiq3_ai_status ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn,
				unsigned int *data)
{
	unsigned int chan = FUNC0(insn->chanspec);
	unsigned int val;
	int ret;
	int i;

	FUNC5(dev, MULTIQ3_CTRL_EN | FUNC1(chan));

	ret = FUNC3(dev, s, insn, multiq3_ai_status,
			     MULTIQ3_STATUS_EOC);
	if (ret)
		return ret;

	for (i = 0; i < insn->n; i++) {
		FUNC6(0, dev->iobase + MULTIQ3_AI_CONV_REG);

		ret = FUNC3(dev, s, insn, multiq3_ai_status,
				     MULTIQ3_STATUS_EOC_I);
		if (ret)
			return ret;

		/* get a 16-bit sample; mask it to the subdevice resolution */
		val = FUNC4(dev->iobase + MULTIQ3_AI_REG) << 8;
		val |= FUNC4(dev->iobase + MULTIQ3_AI_REG);
		val &= s->maxdata;

		/* munge the 2's complement value to offset binary */
		data[i] = FUNC2(s, val);
	}

	return insn->n;
}
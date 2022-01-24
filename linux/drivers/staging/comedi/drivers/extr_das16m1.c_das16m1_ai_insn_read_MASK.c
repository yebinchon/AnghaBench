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
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ DAS16M1_AI_REG ; 
 unsigned int FUNC0 (unsigned short) ; 
 scalar_t__ DAS16M1_CLR_INTR_REG ; 
 int FUNC1 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  das16m1_ai_eoc ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int /*<<< orphan*/ *,int) ; 
 unsigned short FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn,
				unsigned int *data)
{
	int ret;
	int i;

	FUNC2(dev, &insn->chanspec, 1);

	for (i = 0; i < insn->n; i++) {
		unsigned short val;

		/* clear interrupt */
		FUNC4(0, dev->iobase + DAS16M1_CLR_INTR_REG);
		/* trigger conversion */
		FUNC4(0, dev->iobase + DAS16M1_AI_REG);

		ret = FUNC1(dev, s, insn, das16m1_ai_eoc, 0);
		if (ret)
			return ret;

		val = FUNC3(dev->iobase + DAS16M1_AI_REG);
		data[i] = FUNC0(val);
	}

	return insn->n;
}
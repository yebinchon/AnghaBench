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
struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ mmio; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  apci3xxx_ao_eoc ; 
 int FUNC2 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
				  struct comedi_subdevice *s,
				  struct comedi_insn *insn,
				  unsigned int *data)
{
	unsigned int chan = FUNC0(insn->chanspec);
	unsigned int range = FUNC1(insn->chanspec);
	int ret;
	int i;

	for (i = 0; i < insn->n; i++) {
		unsigned int val = data[i];

		/* Set the range selection */
		FUNC3(range, dev->mmio + 96);

		/* Write the analog value to the selected channel */
		FUNC3((val << 8) | chan, dev->mmio + 100);

		/* Wait the end of transfer */
		ret = FUNC2(dev, s, insn, apci3xxx_ao_eoc, 0);
		if (ret)
			return ret;

		s->readback[chan] = val;
	}

	return insn->n;
}
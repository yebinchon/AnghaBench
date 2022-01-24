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
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_subdevice*,unsigned int) ; 
 int FUNC3 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  pci6208_ao_eoc ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
				 struct comedi_subdevice *s,
				 struct comedi_insn *insn,
				 unsigned int *data)
{
	unsigned int chan = FUNC0(insn->chanspec);
	int ret;
	int i;

	for (i = 0; i < insn->n; i++) {
		unsigned int val = data[i];

		/* D/A transfer rate is 2.2us */
		ret = FUNC3(dev, s, insn, pci6208_ao_eoc, 0);
		if (ret)
			return ret;

		/* the hardware expects two's complement values */
		FUNC4(FUNC2(s, val),
		     dev->iobase + FUNC1(chan));

		s->readback[chan] = val;
	}

	return insn->n;
}
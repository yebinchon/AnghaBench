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
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  apci3120_ao_ready ; 
 int FUNC4 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
				  struct comedi_subdevice *s,
				  struct comedi_insn *insn,
				  unsigned int *data)
{
	unsigned int chan = FUNC3(insn->chanspec);
	int i;

	for (i = 0; i < insn->n; i++) {
		unsigned int val = data[i];
		int ret;

		ret = FUNC4(dev, s, insn, apci3120_ao_ready, 0);
		if (ret)
			return ret;

		FUNC5(FUNC1(chan) | FUNC0(val),
		     dev->iobase + FUNC2(chan));

		s->readback[chan] = val;
	}

	return insn->n;
}
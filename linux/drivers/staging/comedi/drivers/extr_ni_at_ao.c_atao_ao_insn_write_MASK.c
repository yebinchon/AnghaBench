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
 scalar_t__ FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
			      struct comedi_subdevice *s,
			      struct comedi_insn *insn,
			      unsigned int *data)
{
	unsigned int chan = FUNC1(insn->chanspec);
	unsigned int val = s->readback[chan];
	int i;

	if (chan == 0)
		FUNC2(dev, 1);

	for (i = 0; i < insn->n; i++) {
		val = data[i];

		/* the hardware expects two's complement values */
		FUNC4(FUNC3(s, val),
		     dev->iobase + FUNC0(chan));
	}
	s->readback[chan] = val;

	if (chan == 0)
		FUNC2(dev, 0);

	return insn->n;
}
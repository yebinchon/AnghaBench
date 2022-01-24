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
struct ni_gpct_device {unsigned int** regs; } ;
struct ni_gpct {unsigned int counter_index; unsigned int chip_index; struct ni_gpct_device* counter_dev; } ;
struct comedi_subdevice {struct ni_gpct* private; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (unsigned int) ; 
 size_t FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (struct comedi_device*,struct comedi_subdevice*) ; 

int FUNC4(struct comedi_device *dev,
		     struct comedi_subdevice *s,
		     struct comedi_insn *insn,
		     unsigned int *data)
{
	struct ni_gpct *counter = s->private;
	struct ni_gpct_device *counter_dev = counter->counter_dev;
	unsigned int channel = FUNC0(insn->chanspec);
	unsigned int cidx = counter->counter_index;
	unsigned int chip = counter->chip_index;
	int i;

	for (i = 0; i < insn->n; i++) {
		switch (channel) {
		case 0:
			data[i] = FUNC3(dev, s);
			break;
		case 1:
			data[i] =
			    counter_dev->regs[chip][FUNC1(cidx)];
			break;
		case 2:
			data[i] =
			    counter_dev->regs[chip][FUNC2(cidx)];
			break;
		}
	}
	return insn->n;
}
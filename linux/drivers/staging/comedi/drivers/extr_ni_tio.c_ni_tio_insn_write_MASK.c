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
 int EINVAL ; 
 int /*<<< orphan*/  GI_LOAD ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 size_t FUNC2 (unsigned int) ; 
 size_t FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (struct ni_gpct*) ; 
 int /*<<< orphan*/  FUNC5 (struct ni_gpct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ni_gpct*,unsigned int,size_t) ; 

int FUNC7(struct comedi_device *dev,
		      struct comedi_subdevice *s,
		      struct comedi_insn *insn,
		      unsigned int *data)
{
	struct ni_gpct *counter = s->private;
	struct ni_gpct_device *counter_dev = counter->counter_dev;
	unsigned int channel = FUNC0(insn->chanspec);
	unsigned int cidx = counter->counter_index;
	unsigned int chip = counter->chip_index;
	unsigned int load_reg;
	unsigned int load_val;

	if (insn->n < 1)
		return 0;
	load_val = data[insn->n - 1];
	switch (channel) {
	case 0:
		/*
		 * Unsafe if counter is armed.
		 * Should probably check status and return -EBUSY if armed.
		 */

		/*
		 * Don't disturb load source select, just use whichever
		 * load register is already selected.
		 */
		load_reg = FUNC4(counter);
		FUNC6(counter, load_val, load_reg);
		FUNC5(counter, FUNC1(cidx),
					  0, 0, GI_LOAD);
		/* restore load reg */
		FUNC6(counter, counter_dev->regs[chip][load_reg],
			     load_reg);
		break;
	case 1:
		counter_dev->regs[chip][FUNC2(cidx)] = load_val;
		FUNC6(counter, load_val, FUNC2(cidx));
		break;
	case 2:
		counter_dev->regs[chip][FUNC3(cidx)] = load_val;
		FUNC6(counter, load_val, FUNC3(cidx));
		break;
	default:
		return -EINVAL;
	}
	return insn->n;
}
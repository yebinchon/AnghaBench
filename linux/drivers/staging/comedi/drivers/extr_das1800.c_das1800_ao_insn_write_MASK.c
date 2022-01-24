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
struct comedi_subdevice {int n_chan; unsigned int* readback; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; scalar_t__ iobase; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 scalar_t__ DAS1800_DAC ; 
 scalar_t__ DAS1800_SELECT ; 
 unsigned int FUNC2 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev,
				 struct comedi_subdevice *s,
				 struct comedi_insn *insn,
				 unsigned int *data)
{
	unsigned int chan = FUNC0(insn->chanspec);
	unsigned int update_chan = s->n_chan - 1;
	unsigned long flags;
	int i;

	/* protects the indirect addressing selected by DAS1800_SELECT */
	FUNC5(&dev->spinlock, flags);

	for (i = 0; i < insn->n; i++) {
		unsigned int val = data[i];

		s->readback[chan] = val;

		val = FUNC2(s, val);

		/* load this channel (and update if it's the last channel) */
		FUNC3(FUNC1(chan), dev->iobase + DAS1800_SELECT);
		FUNC4(val, dev->iobase + DAS1800_DAC);

		/* update all channels */
		if (chan != update_chan) {
			val = FUNC2(s, s->readback[update_chan]);

			FUNC3(FUNC1(update_chan), dev->iobase + DAS1800_SELECT);
			FUNC4(val, dev->iobase + DAS1800_DAC);
		}
	}
	FUNC6(&dev->spinlock, flags);

	return insn->n;
}
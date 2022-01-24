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
struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int len_chanlist; int /*<<< orphan*/  cancel; int /*<<< orphan*/  do_cmd; int /*<<< orphan*/  do_cmdtest; int /*<<< orphan*/  insn_bits; int /*<<< orphan*/ * range_table; int /*<<< orphan*/  type; } ;
struct comedi_device {unsigned long iobase; unsigned int irq; int /*<<< orphan*/  board_name; struct comedi_subdevice* read_subdev; struct comedi_subdevice* subdevices; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_SUBD_DI ; 
 int /*<<< orphan*/  COMEDI_SUBD_UNUSED ; 
 int SDF_CMD_READ ; 
 int SDF_READABLE ; 
 int FUNC0 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  pc236_interrupt ; 
 int /*<<< orphan*/  pc236_intr_cancel ; 
 int /*<<< orphan*/  pc236_intr_cmd ; 
 int /*<<< orphan*/  pc236_intr_cmdtest ; 
 int /*<<< orphan*/  pc236_intr_insn ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  range_digital ; 
 scalar_t__ FUNC2 (unsigned int,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,struct comedi_device*) ; 
 int FUNC3 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ *,int) ; 

int FUNC4(struct comedi_device *dev, unsigned long iobase,
			      unsigned int irq, unsigned long req_irq_flags)
{
	struct comedi_subdevice *s;
	int ret;

	dev->iobase = iobase;

	ret = FUNC0(dev, 2);
	if (ret)
		return ret;

	s = &dev->subdevices[0];
	/* digital i/o subdevice (8255) */
	ret = FUNC3(dev, s, NULL, 0x00);
	if (ret)
		return ret;

	s = &dev->subdevices[1];
	dev->read_subdev = s;
	s->type = COMEDI_SUBD_UNUSED;
	FUNC1(dev, false);
	if (irq) {
		if (FUNC2(irq, pc236_interrupt, req_irq_flags,
				dev->board_name, dev) >= 0) {
			dev->irq = irq;
			s->type = COMEDI_SUBD_DI;
			s->subdev_flags = SDF_READABLE | SDF_CMD_READ;
			s->n_chan = 1;
			s->maxdata = 1;
			s->range_table = &range_digital;
			s->insn_bits = pc236_intr_insn;
			s->len_chanlist	= 1;
			s->do_cmdtest = pc236_intr_cmdtest;
			s->do_cmd = pc236_intr_cmd;
			s->cancel = pc236_intr_cancel;
		}
	}

	return 0;
}
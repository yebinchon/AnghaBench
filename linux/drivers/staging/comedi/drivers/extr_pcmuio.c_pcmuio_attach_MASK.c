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
struct pcmuio_private {scalar_t__ irq2; struct pcmuio_asic* asics; } ;
struct pcmuio_board {int num_asics; } ;
struct pcmuio_asic {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  pagelock; } ;
struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int len_chanlist; int /*<<< orphan*/  do_cmdtest; int /*<<< orphan*/  do_cmd; int /*<<< orphan*/  cancel; int /*<<< orphan*/  insn_config; int /*<<< orphan*/  insn_bits; int /*<<< orphan*/ * range_table; int /*<<< orphan*/  type; } ;
struct comedi_device {scalar_t__ irq; int n_subdevices; struct comedi_subdevice* read_subdev; struct comedi_subdevice* subdevices; int /*<<< orphan*/  board_name; struct pcmuio_board* board_ptr; } ;
struct comedi_devconfig {scalar_t__* options; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_SUBD_DIO ; 
 int ENOMEM ; 
 int PCMUIO_ASIC_IOSIZE ; 
 int PCMUIO_MAX_ASICS ; 
 int SDF_CMD_READ ; 
 int SDF_LSAMPL ; 
 int SDF_PACKED ; 
 int SDF_READABLE ; 
 int SDF_WRITABLE ; 
 struct pcmuio_private* FUNC0 (struct comedi_device*,int) ; 
 int FUNC1 (struct comedi_device*,int) ; 
 int FUNC2 (struct comedi_device*,scalar_t__,int) ; 
 int /*<<< orphan*/  pcmuio_cancel ; 
 int /*<<< orphan*/  pcmuio_cmd ; 
 int /*<<< orphan*/  pcmuio_cmdtest ; 
 int /*<<< orphan*/  pcmuio_dio_insn_bits ; 
 int /*<<< orphan*/  pcmuio_dio_insn_config ; 
 int /*<<< orphan*/  pcmuio_interrupt ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  range_digital ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev, struct comedi_devconfig *it)
{
	const struct pcmuio_board *board = dev->board_ptr;
	struct comedi_subdevice *s;
	struct pcmuio_private *devpriv;
	int ret;
	int i;

	ret = FUNC2(dev, it->options[0],
				    board->num_asics * PCMUIO_ASIC_IOSIZE);
	if (ret)
		return ret;

	devpriv = FUNC0(dev, sizeof(*devpriv));
	if (!devpriv)
		return -ENOMEM;

	for (i = 0; i < PCMUIO_MAX_ASICS; ++i) {
		struct pcmuio_asic *chip = &devpriv->asics[i];

		FUNC5(&chip->pagelock);
		FUNC5(&chip->spinlock);
	}

	FUNC3(dev);

	if (it->options[1]) {
		/* request the irq for the 1st asic */
		ret = FUNC4(it->options[1], pcmuio_interrupt, 0,
				  dev->board_name, dev);
		if (ret == 0)
			dev->irq = it->options[1];
	}

	if (board->num_asics == 2) {
		if (it->options[2] == dev->irq) {
			/* the same irq (or none) is used by both asics */
			devpriv->irq2 = it->options[2];
		} else if (it->options[2]) {
			/* request the irq for the 2nd asic */
			ret = FUNC4(it->options[2], pcmuio_interrupt, 0,
					  dev->board_name, dev);
			if (ret == 0)
				devpriv->irq2 = it->options[2];
		}
	}

	ret = FUNC1(dev, board->num_asics * 2);
	if (ret)
		return ret;

	for (i = 0; i < dev->n_subdevices; ++i) {
		s = &dev->subdevices[i];
		s->type		= COMEDI_SUBD_DIO;
		s->subdev_flags	= SDF_READABLE | SDF_WRITABLE;
		s->n_chan	= 24;
		s->maxdata	= 1;
		s->range_table	= &range_digital;
		s->insn_bits	= pcmuio_dio_insn_bits;
		s->insn_config	= pcmuio_dio_insn_config;

		/* subdevices 0 and 2 can support interrupts */
		if ((i == 0 && dev->irq) || (i == 2 && devpriv->irq2)) {
			/* setup the interrupt subdevice */
			dev->read_subdev = s;
			s->subdev_flags	|= SDF_CMD_READ | SDF_LSAMPL |
					   SDF_PACKED;
			s->len_chanlist	= s->n_chan;
			s->cancel	= pcmuio_cancel;
			s->do_cmd	= pcmuio_cmd;
			s->do_cmdtest	= pcmuio_cmdtest;
		}
	}

	return 0;
}
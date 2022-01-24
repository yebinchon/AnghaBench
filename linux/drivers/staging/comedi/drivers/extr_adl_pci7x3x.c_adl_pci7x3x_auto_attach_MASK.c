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
struct pci_dev {int dummy; } ;
struct comedi_subdevice {int n_chan; int maxdata; void* private; int /*<<< orphan*/ * range_table; void* insn_bits; void* subdev_flags; void* type; } ;
struct comedi_device {struct comedi_subdevice* subdevices; int /*<<< orphan*/  iobase; int /*<<< orphan*/  board_name; struct adl_pci7x3x_boardinfo const* board_ptr; } ;
struct adl_pci7x3x_boardinfo {int di_nchan; int do_nchan; int /*<<< orphan*/  nsubdevs; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct adl_pci7x3x_boardinfo*) ; 
 void* COMEDI_SUBD_DI ; 
 void* COMEDI_SUBD_DO ; 
 int ENODEV ; 
 scalar_t__ PCI743X_DIO_REG ; 
 scalar_t__ PCI7X3X_DIO_REG ; 
 void* SDF_READABLE ; 
 void* SDF_WRITABLE ; 
 struct adl_pci7x3x_boardinfo* adl_pci7x3x_boards ; 
 void* adl_pci7x3x_di_insn_bits ; 
 void* adl_pci7x3x_do_insn_bits ; 
 int FUNC1 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct comedi_device*) ; 
 struct pci_dev* FUNC3 (struct comedi_device*) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  range_digital ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
				   unsigned long context)
{
	struct pci_dev *pcidev = FUNC3(dev);
	const struct adl_pci7x3x_boardinfo *board = NULL;
	struct comedi_subdevice *s;
	int subdev;
	int nchan;
	int ret;

	if (context < FUNC0(adl_pci7x3x_boards))
		board = &adl_pci7x3x_boards[context];
	if (!board)
		return -ENODEV;
	dev->board_ptr = board;
	dev->board_name = board->name;

	ret = FUNC2(dev);
	if (ret)
		return ret;
	dev->iobase = FUNC5(pcidev, 2);

	ret = FUNC1(dev, board->nsubdevs);
	if (ret)
		return ret;

	subdev = 0;

	if (board->di_nchan) {
		nchan = FUNC4(board->di_nchan, 32);

		s = &dev->subdevices[subdev];
		/* Isolated digital inputs 0 to 15/31 */
		s->type		= COMEDI_SUBD_DI;
		s->subdev_flags	= SDF_READABLE;
		s->n_chan	= nchan;
		s->maxdata	= 1;
		s->insn_bits	= adl_pci7x3x_di_insn_bits;
		s->range_table	= &range_digital;

		s->private	= (void *)PCI7X3X_DIO_REG;

		subdev++;

		nchan = board->di_nchan - nchan;
		if (nchan) {
			s = &dev->subdevices[subdev];
			/* Isolated digital inputs 32 to 63 */
			s->type		= COMEDI_SUBD_DI;
			s->subdev_flags	= SDF_READABLE;
			s->n_chan	= nchan;
			s->maxdata	= 1;
			s->insn_bits	= adl_pci7x3x_di_insn_bits;
			s->range_table	= &range_digital;

			s->private	= (void *)PCI743X_DIO_REG;

			subdev++;
		}
	}

	if (board->do_nchan) {
		nchan = FUNC4(board->do_nchan, 32);

		s = &dev->subdevices[subdev];
		/* Isolated digital outputs 0 to 15/31 */
		s->type		= COMEDI_SUBD_DO;
		s->subdev_flags	= SDF_WRITABLE;
		s->n_chan	= nchan;
		s->maxdata	= 1;
		s->insn_bits	= adl_pci7x3x_do_insn_bits;
		s->range_table	= &range_digital;

		s->private	= (void *)PCI7X3X_DIO_REG;

		subdev++;

		nchan = board->do_nchan - nchan;
		if (nchan) {
			s = &dev->subdevices[subdev];
			/* Isolated digital outputs 32 to 63 */
			s->type		= COMEDI_SUBD_DO;
			s->subdev_flags	= SDF_WRITABLE;
			s->n_chan	= nchan;
			s->maxdata	= 1;
			s->insn_bits	= adl_pci7x3x_do_insn_bits;
			s->range_table	= &range_digital;

			s->private	= (void *)PCI743X_DIO_REG;

			subdev++;
		}
	}

	return 0;
}
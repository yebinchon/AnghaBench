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
struct comedi_subdevice {int n_chan; int maxdata; int state; int /*<<< orphan*/  insn_bits; int /*<<< orphan*/ * range_table; int /*<<< orphan*/  subdev_flags; int /*<<< orphan*/  type; } ;
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* subdevices; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_SUBD_DO ; 
 scalar_t__ PCI263_DO_0_7_REG ; 
 scalar_t__ PCI263_DO_8_15_REG ; 
 int /*<<< orphan*/  SDF_WRITABLE ; 
 int FUNC0 (struct comedi_device*,int) ; 
 int FUNC1 (struct comedi_device*) ; 
 struct pci_dev* FUNC2 (struct comedi_device*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  pci263_do_insn_bits ; 
 scalar_t__ FUNC4 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  range_digital ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
			      unsigned long context_unused)
{
	struct pci_dev *pci_dev = FUNC2(dev);
	struct comedi_subdevice *s;
	int ret;

	ret = FUNC1(dev);
	if (ret)
		return ret;

	dev->iobase = FUNC4(pci_dev, 2);
	ret = FUNC0(dev, 1);
	if (ret)
		return ret;

	/* Digital Output subdevice */
	s = &dev->subdevices[0];
	s->type		= COMEDI_SUBD_DO;
	s->subdev_flags	= SDF_WRITABLE;
	s->n_chan	= 16;
	s->maxdata	= 1;
	s->range_table	= &range_digital;
	s->insn_bits	= pci263_do_insn_bits;

	/* read initial relay state */
	s->state = FUNC3(dev->iobase + PCI263_DO_0_7_REG) |
		   (FUNC3(dev->iobase + PCI263_DO_8_15_REG) << 8);

	return 0;
}
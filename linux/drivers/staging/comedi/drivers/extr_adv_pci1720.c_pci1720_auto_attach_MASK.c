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
struct comedi_subdevice {int n_chan; int maxdata; int /*<<< orphan*/  insn_bits; int /*<<< orphan*/ * range_table; int /*<<< orphan*/  subdev_flags; int /*<<< orphan*/  type; int /*<<< orphan*/  insn_write; } ;
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* subdevices; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_SUBD_AO ; 
 int /*<<< orphan*/  COMEDI_SUBD_DI ; 
 scalar_t__ PCI1720_SYNC_CTRL_REG ; 
 int /*<<< orphan*/  SDF_READABLE ; 
 int /*<<< orphan*/  SDF_WRITABLE ; 
 int FUNC0 (struct comedi_subdevice*) ; 
 int FUNC1 (struct comedi_device*,int) ; 
 int FUNC2 (struct comedi_device*) ; 
 struct pci_dev* FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  pci1720_ao_insn_write ; 
 int /*<<< orphan*/  pci1720_ao_range ; 
 int /*<<< orphan*/  pci1720_di_insn_bits ; 
 scalar_t__ FUNC5 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  range_digital ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
			       unsigned long context)
{
	struct pci_dev *pcidev = FUNC3(dev);
	struct comedi_subdevice *s;
	int ret;

	ret = FUNC2(dev);
	if (ret)
		return ret;
	dev->iobase = FUNC5(pcidev, 2);

	ret = FUNC1(dev, 2);
	if (ret)
		return ret;

	/* Analog Output subdevice */
	s = &dev->subdevices[0];
	s->type		= COMEDI_SUBD_AO;
	s->subdev_flags	= SDF_WRITABLE;
	s->n_chan	= 4;
	s->maxdata	= 0x0fff;
	s->range_table	= &pci1720_ao_range;
	s->insn_write	= pci1720_ao_insn_write;

	ret = FUNC0(s);
	if (ret)
		return ret;

	/* Digital Input subdevice (BoardID SW1) */
	s = &dev->subdevices[1];
	s->type		= COMEDI_SUBD_DI;
	s->subdev_flags	= SDF_READABLE;
	s->n_chan	= 4;
	s->maxdata	= 1;
	s->range_table	= &range_digital;
	s->insn_bits	= pci1720_di_insn_bits;

	/* disable synchronized output, channels update when written */
	FUNC4(0, dev->iobase + PCI1720_SYNC_CTRL_REG);

	return 0;
}
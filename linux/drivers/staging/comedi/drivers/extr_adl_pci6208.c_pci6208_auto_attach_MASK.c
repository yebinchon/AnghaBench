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
struct comedi_subdevice {int n_chan; int maxdata; unsigned int state; int /*<<< orphan*/  insn_bits; int /*<<< orphan*/ * range_table; void* subdev_flags; int /*<<< orphan*/  type; int /*<<< orphan*/  insn_write; } ;
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* subdevices; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_SUBD_AO ; 
 int /*<<< orphan*/  COMEDI_SUBD_DI ; 
 int /*<<< orphan*/  COMEDI_SUBD_DO ; 
 scalar_t__ PCI6208_DIO ; 
 unsigned int PCI6208_DIO_DO_MASK ; 
 unsigned int PCI6208_DIO_DO_SHIFT ; 
 void* SDF_READABLE ; 
 void* SDF_WRITABLE ; 
 int FUNC0 (struct comedi_subdevice*) ; 
 int FUNC1 (struct comedi_device*,int) ; 
 int FUNC2 (struct comedi_device*) ; 
 struct pci_dev* FUNC3 (struct comedi_device*) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  pci6208_ao_insn_write ; 
 int /*<<< orphan*/  pci6208_di_insn_bits ; 
 int /*<<< orphan*/  pci6208_do_insn_bits ; 
 scalar_t__ FUNC5 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  range_bipolar10 ; 
 int /*<<< orphan*/  range_digital ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
			       unsigned long context_unused)
{
	struct pci_dev *pcidev = FUNC3(dev);
	struct comedi_subdevice *s;
	unsigned int val;
	int ret;

	ret = FUNC2(dev);
	if (ret)
		return ret;
	dev->iobase = FUNC5(pcidev, 2);

	ret = FUNC1(dev, 3);
	if (ret)
		return ret;

	s = &dev->subdevices[0];
	/* analog output subdevice */
	s->type		= COMEDI_SUBD_AO;
	s->subdev_flags	= SDF_WRITABLE;
	s->n_chan	= 16;	/* Only 8 usable on PCI-6208 */
	s->maxdata	= 0xffff;
	s->range_table	= &range_bipolar10;
	s->insn_write	= pci6208_ao_insn_write;

	ret = FUNC0(s);
	if (ret)
		return ret;

	s = &dev->subdevices[1];
	/* digital input subdevice */
	s->type		= COMEDI_SUBD_DI;
	s->subdev_flags	= SDF_READABLE;
	s->n_chan	= 4;
	s->maxdata	= 1;
	s->range_table	= &range_digital;
	s->insn_bits	= pci6208_di_insn_bits;

	s = &dev->subdevices[2];
	/* digital output subdevice */
	s->type		= COMEDI_SUBD_DO;
	s->subdev_flags	= SDF_WRITABLE;
	s->n_chan	= 4;
	s->maxdata	= 1;
	s->range_table	= &range_digital;
	s->insn_bits	= pci6208_do_insn_bits;

	/*
	 * Get the read back signals from the digital outputs
	 * and save it as the initial state for the subdevice.
	 */
	val = FUNC4(dev->iobase + PCI6208_DIO);
	val = (val & PCI6208_DIO_DO_MASK) >> PCI6208_DIO_DO_SHIFT;
	s->state	= val;

	return 0;
}
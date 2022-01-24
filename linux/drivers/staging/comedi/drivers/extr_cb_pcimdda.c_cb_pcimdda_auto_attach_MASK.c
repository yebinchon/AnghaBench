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
struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int /*<<< orphan*/  insn_read; int /*<<< orphan*/  insn_write; int /*<<< orphan*/ * range_table; int /*<<< orphan*/  type; } ;
struct comedi_device {struct comedi_subdevice* subdevices; int /*<<< orphan*/  iobase; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_SUBD_AO ; 
 int /*<<< orphan*/  PCIMDDA_8255_BASE_REG ; 
 int SDF_READABLE ; 
 int SDF_WRITABLE ; 
 int /*<<< orphan*/  cb_pcimdda_ao_insn_read ; 
 int /*<<< orphan*/  cb_pcimdda_ao_insn_write ; 
 int FUNC0 (struct comedi_subdevice*) ; 
 int FUNC1 (struct comedi_device*,int) ; 
 int FUNC2 (struct comedi_device*) ; 
 struct pci_dev* FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  range_bipolar5 ; 
 int FUNC5 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
				  unsigned long context_unused)
{
	struct pci_dev *pcidev = FUNC3(dev);
	struct comedi_subdevice *s;
	int ret;

	ret = FUNC2(dev);
	if (ret)
		return ret;
	dev->iobase = FUNC4(pcidev, 3);

	ret = FUNC1(dev, 2);
	if (ret)
		return ret;

	s = &dev->subdevices[0];
	/* analog output subdevice */
	s->type		= COMEDI_SUBD_AO;
	s->subdev_flags	= SDF_WRITABLE | SDF_READABLE;
	s->n_chan	= 6;
	s->maxdata	= 0xffff;
	s->range_table	= &range_bipolar5;
	s->insn_write	= cb_pcimdda_ao_insn_write;
	s->insn_read	= cb_pcimdda_ao_insn_read;

	ret = FUNC0(s);
	if (ret)
		return ret;

	s = &dev->subdevices[1];
	/* digital i/o subdevice */
	return FUNC5(dev, s, NULL, PCIMDDA_8255_BASE_REG);
}
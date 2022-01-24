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
struct comedi_subdevice {int n_chan; int maxdata; int /*<<< orphan*/  insn_bits; int /*<<< orphan*/ * range_table; int /*<<< orphan*/  subdev_flags; int /*<<< orphan*/  type; int /*<<< orphan*/  insn_config; int /*<<< orphan*/  insn_write; int /*<<< orphan*/  insn_read; } ;
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* subdevices; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_SUBD_COUNTER ; 
 int /*<<< orphan*/  COMEDI_SUBD_DO ; 
 int /*<<< orphan*/  KE_OSC_SEL_20MHZ ; 
 scalar_t__ KE_OSC_SEL_REG ; 
 int /*<<< orphan*/  SDF_READABLE ; 
 int /*<<< orphan*/  SDF_WRITABLE ; 
 int FUNC0 (struct comedi_device*,int) ; 
 int FUNC1 (struct comedi_device*) ; 
 struct pci_dev* FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  ke_counter_do_insn_bits ; 
 int /*<<< orphan*/  ke_counter_insn_config ; 
 int /*<<< orphan*/  ke_counter_insn_read ; 
 int /*<<< orphan*/  ke_counter_insn_write ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  range_digital ; 
 int /*<<< orphan*/  range_unknown ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
				  unsigned long context_unused)
{
	struct pci_dev *pcidev = FUNC2(dev);
	struct comedi_subdevice *s;
	int ret;

	ret = FUNC1(dev);
	if (ret)
		return ret;
	dev->iobase = FUNC5(pcidev, 0);

	ret = FUNC0(dev, 2);
	if (ret)
		return ret;

	s = &dev->subdevices[0];
	s->type		= COMEDI_SUBD_COUNTER;
	s->subdev_flags	= SDF_READABLE;
	s->n_chan	= 3;
	s->maxdata	= 0x01ffffff;
	s->range_table	= &range_unknown;
	s->insn_read	= ke_counter_insn_read;
	s->insn_write	= ke_counter_insn_write;
	s->insn_config	= ke_counter_insn_config;

	s = &dev->subdevices[1];
	s->type		= COMEDI_SUBD_DO;
	s->subdev_flags	= SDF_WRITABLE;
	s->n_chan	= 3;
	s->maxdata	= 1;
	s->range_table	= &range_digital;
	s->insn_bits	= ke_counter_do_insn_bits;

	FUNC4(KE_OSC_SEL_20MHZ, dev->iobase + KE_OSC_SEL_REG);

	FUNC3(dev);

	return 0;
}
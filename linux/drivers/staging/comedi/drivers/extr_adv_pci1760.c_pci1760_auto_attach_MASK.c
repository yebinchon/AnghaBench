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
struct comedi_subdevice {int n_chan; int maxdata; int state; int /*<<< orphan*/  type; int /*<<< orphan*/  insn_config; int /*<<< orphan*/  subdev_flags; int /*<<< orphan*/  insn_bits; int /*<<< orphan*/ * range_table; } ;
struct comedi_device {struct comedi_subdevice* subdevices; int /*<<< orphan*/  iobase; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_SUBD_DI ; 
 int /*<<< orphan*/  COMEDI_SUBD_DO ; 
 int /*<<< orphan*/  COMEDI_SUBD_PWM ; 
 int /*<<< orphan*/  COMEDI_SUBD_UNUSED ; 
 int /*<<< orphan*/  PCI1760_CMD_GET_DO ; 
 int /*<<< orphan*/  SDF_PWM_COUNTER ; 
 int /*<<< orphan*/  SDF_READABLE ; 
 int /*<<< orphan*/  SDF_WRITABLE ; 
 int FUNC0 (struct comedi_device*,int) ; 
 int FUNC1 (struct comedi_device*) ; 
 struct pci_dev* FUNC2 (struct comedi_device*) ; 
 int FUNC3 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci1760_di_insn_bits ; 
 int /*<<< orphan*/  pci1760_do_insn_bits ; 
 int /*<<< orphan*/  pci1760_pwm_insn_config ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  range_digital ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
			       unsigned long context)
{
	struct pci_dev *pcidev = FUNC2(dev);
	struct comedi_subdevice *s;
	int ret;

	ret = FUNC1(dev);
	if (ret)
		return ret;
	dev->iobase = FUNC5(pcidev, 0);

	FUNC4(dev);

	ret = FUNC0(dev, 4);
	if (ret)
		return ret;

	/* Digital Input subdevice */
	s = &dev->subdevices[0];
	s->type		= COMEDI_SUBD_DI;
	s->subdev_flags	= SDF_READABLE;
	s->n_chan	= 8;
	s->maxdata	= 1;
	s->range_table	= &range_digital;
	s->insn_bits	= pci1760_di_insn_bits;

	/* Digital Output subdevice */
	s = &dev->subdevices[1];
	s->type		= COMEDI_SUBD_DO;
	s->subdev_flags	= SDF_WRITABLE;
	s->n_chan	= 8;
	s->maxdata	= 1;
	s->range_table	= &range_digital;
	s->insn_bits	= pci1760_do_insn_bits;

	/* get the current state of the outputs */
	ret = FUNC3(dev, PCI1760_CMD_GET_DO, 0);
	if (ret < 0)
		return ret;
	s->state	= ret;

	/* PWM subdevice */
	s = &dev->subdevices[2];
	s->type		= COMEDI_SUBD_PWM;
	s->subdev_flags	= SDF_PWM_COUNTER;
	s->n_chan	= 2;
	s->insn_config	= pci1760_pwm_insn_config;

	/* Counter subdevice */
	s = &dev->subdevices[3];
	s->type		= COMEDI_SUBD_UNUSED;

	return 0;
}
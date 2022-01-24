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
struct pci1710_private {int /*<<< orphan*/  ctrl; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; struct pci1710_private* private; } ;

/* Variables and functions */
 scalar_t__ PCI171X_CLRFIFO_REG ; 
 scalar_t__ PCI171X_CLRINT_REG ; 
 scalar_t__ PCI171X_CTRL_REG ; 
 int /*<<< orphan*/  PCI171X_CTRL_SW ; 
 scalar_t__ PCI171X_SOFTTRG_REG ; 
 int FUNC0 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  pci1710_ai_eoc ; 
 int FUNC3 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn,
				unsigned int *data)
{
	struct pci1710_private *devpriv = dev->private;
	int ret = 0;
	int i;

	/* enable software trigger */
	devpriv->ctrl |= PCI171X_CTRL_SW;
	FUNC2(devpriv->ctrl, dev->iobase + PCI171X_CTRL_REG);

	FUNC1(0, dev->iobase + PCI171X_CLRFIFO_REG);
	FUNC1(0, dev->iobase + PCI171X_CLRINT_REG);

	FUNC4(dev, s, &insn->chanspec, 1, 1);

	for (i = 0; i < insn->n; i++) {
		unsigned int val;

		/* start conversion */
		FUNC2(0, dev->iobase + PCI171X_SOFTTRG_REG);

		ret = FUNC0(dev, s, insn, pci1710_ai_eoc, 0);
		if (ret)
			break;

		ret = FUNC3(dev, s, 0, &val);
		if (ret)
			break;

		data[i] = val;
	}

	/* disable software trigger */
	devpriv->ctrl &= ~PCI171X_CTRL_SW;
	FUNC2(devpriv->ctrl, dev->iobase + PCI171X_CTRL_REG);

	FUNC1(0, dev->iobase + PCI171X_CLRFIFO_REG);
	FUNC1(0, dev->iobase + PCI171X_CLRINT_REG);

	return ret ? ret : insn->n;
}
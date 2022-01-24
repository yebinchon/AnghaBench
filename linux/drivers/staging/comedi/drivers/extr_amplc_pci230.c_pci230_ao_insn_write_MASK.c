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
struct pci230_private {scalar_t__ daqio; int /*<<< orphan*/  ao_bipolar; } ;
struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {struct pci230_private* private; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PCI230_DACCON ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn,
				unsigned int *data)
{
	struct pci230_private *devpriv = dev->private;
	unsigned int chan = FUNC0(insn->chanspec);
	unsigned int range = FUNC1(insn->chanspec);
	unsigned int val = s->readback[chan];
	int i;

	/*
	 * Set range - see analogue output range table; 0 => unipolar 10V,
	 * 1 => bipolar +/-10V range scale
	 */
	devpriv->ao_bipolar = FUNC2(s, range);
	FUNC3(range, devpriv->daqio + PCI230_DACCON);

	for (i = 0; i < insn->n; i++) {
		val = data[i];
		FUNC4(dev, val, chan);
	}
	s->readback[chan] = val;

	return insn->n;
}
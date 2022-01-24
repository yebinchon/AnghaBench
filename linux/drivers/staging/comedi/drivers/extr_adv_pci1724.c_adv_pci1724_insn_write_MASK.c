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
struct comedi_subdevice {unsigned int* readback; scalar_t__ private; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned long FUNC3 (unsigned int) ; 
 scalar_t__ PCI1724_DAC_CTRL_REG ; 
 scalar_t__ PCI1724_SYNC_CTRL_REG ; 
 int /*<<< orphan*/  adv_pci1724_dac_idle ; 
 int FUNC4 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
				  struct comedi_subdevice *s,
				  struct comedi_insn *insn,
				  unsigned int *data)
{
	unsigned long mode = (unsigned long)s->private;
	unsigned int chan = FUNC0(insn->chanspec);
	unsigned int ctrl;
	int ret;
	int i;

	ctrl = FUNC3(chan) | FUNC1(chan) | mode;

	/* turn off synchronous mode */
	FUNC5(0, dev->iobase + PCI1724_SYNC_CTRL_REG);

	for (i = 0; i < insn->n; ++i) {
		unsigned int val = data[i];

		ret = FUNC4(dev, s, insn, adv_pci1724_dac_idle, 0);
		if (ret)
			return ret;

		FUNC5(ctrl | FUNC2(val),
		     dev->iobase + PCI1724_DAC_CTRL_REG);

		s->readback[chan] = val;
	}

	return insn->n;
}
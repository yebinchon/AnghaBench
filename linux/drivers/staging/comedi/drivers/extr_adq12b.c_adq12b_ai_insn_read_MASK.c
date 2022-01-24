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
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; struct adq12b_private* private; } ;
struct adq12b_private {unsigned int last_ctreg; } ;

/* Variables and functions */
 scalar_t__ ADQ12B_ADHIG ; 
 scalar_t__ ADQ12B_ADLOW ; 
 scalar_t__ ADQ12B_CTREG ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adq12b_ai_eoc ; 
 int FUNC4 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn,
			       unsigned int *data)
{
	struct adq12b_private *devpriv = dev->private;
	unsigned int chan = FUNC2(insn->chanspec);
	unsigned int range = FUNC3(insn->chanspec);
	unsigned int val;
	int ret;
	int i;

	/* change channel and range only if it is different from the previous */
	val = FUNC1(range) | FUNC0(chan);
	if (val != devpriv->last_ctreg) {
		FUNC6(val, dev->iobase + ADQ12B_CTREG);
		devpriv->last_ctreg = val;
		FUNC7(50, 100);	/* wait for the mux to settle */
	}

	val = FUNC5(dev->iobase + ADQ12B_ADLOW);	/* trigger A/D */

	for (i = 0; i < insn->n; i++) {
		ret = FUNC4(dev, s, insn, adq12b_ai_eoc, 0);
		if (ret)
			return ret;

		val = FUNC5(dev->iobase + ADQ12B_ADHIG) << 8;
		val |= FUNC5(dev->iobase + ADQ12B_ADLOW);	/* retriggers A/D */

		data[i] = val;
	}

	return insn->n;
}
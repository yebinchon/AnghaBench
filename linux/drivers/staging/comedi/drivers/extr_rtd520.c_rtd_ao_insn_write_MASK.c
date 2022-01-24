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
struct rtd_private {scalar_t__ las1; } ;
struct comedi_subdevice {int maxdata; unsigned int* readback; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ mmio; struct rtd_private* private; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 unsigned int FUNC5 (struct comedi_subdevice*,unsigned int) ; 
 scalar_t__ FUNC6 (struct comedi_subdevice*,unsigned int) ; 
 int FUNC7 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtd_ao_eoc ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct comedi_device *dev,
			     struct comedi_subdevice *s,
			     struct comedi_insn *insn,
			     unsigned int *data)
{
	struct rtd_private *devpriv = dev->private;
	unsigned int chan = FUNC0(insn->chanspec);
	unsigned int range = FUNC1(insn->chanspec);
	int ret;
	int i;

	/* Configure the output range (table index matches the range values) */
	FUNC8(range & 7, dev->mmio + FUNC2(chan));

	for (i = 0; i < insn->n; ++i) {
		unsigned int val = data[i];

		/* bipolar uses 2's complement values with an extended sign */
		if (FUNC6(s, range)) {
			val = FUNC5(s, val);
			val |= (val & ((s->maxdata + 1) >> 1)) << 1;
		}

		/* shift the 12-bit data (+ sign) to match the register */
		val <<= 3;

		FUNC8(val, devpriv->las1 + FUNC4(chan));
		FUNC8(0, dev->mmio + FUNC3(chan));

		ret = FUNC7(dev, s, insn, rtd_ao_eoc, 0);
		if (ret)
			return ret;

		s->readback[chan] = data[i];
	}

	return insn->n;
}
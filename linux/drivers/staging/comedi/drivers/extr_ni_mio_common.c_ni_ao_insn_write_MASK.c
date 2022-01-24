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
struct ni_private {scalar_t__ is_m_series; scalar_t__ is_6xxx; } ;
struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {struct ni_private* private; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int NI671X_AO_IMMEDIATE_REG ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (unsigned int) ; 
 unsigned int FUNC5 (struct comedi_subdevice*,unsigned int) ; 
 scalar_t__ FUNC6 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct comedi_device*,unsigned int,int) ; 

__attribute__((used)) static int FUNC10(struct comedi_device *dev,
			    struct comedi_subdevice *s,
			    struct comedi_insn *insn,
			    unsigned int *data)
{
	struct ni_private *devpriv = dev->private;
	unsigned int chan = FUNC0(insn->chanspec);
	unsigned int range = FUNC1(insn->chanspec);
	int reg;
	int i;

	if (devpriv->is_6xxx) {
		FUNC8(dev, 1 << chan, NI671X_AO_IMMEDIATE_REG);

		reg = FUNC2(chan);
	} else if (devpriv->is_m_series) {
		reg = FUNC4(chan);
	} else {
		reg = FUNC3(chan);
	}

	FUNC7(dev, s, &insn->chanspec, 1, 0);

	for (i = 0; i < insn->n; i++) {
		unsigned int val = data[i];

		s->readback[chan] = val;

		if (devpriv->is_6xxx) {
			/*
			 * 6xxx boards have bipolar outputs, munge the
			 * unsigned comedi values to 2's complement
			 */
			val = FUNC5(s, val);

			FUNC8(dev, val, reg);
		} else if (devpriv->is_m_series) {
			/*
			 * M-series boards use offset binary values for
			 * bipolar and uinpolar outputs
			 */
			FUNC9(dev, val, reg);
		} else {
			/*
			 * Non-M series boards need two's complement values
			 * for bipolar ranges.
			 */
			if (FUNC6(s, range))
				val = FUNC5(s, val);

			FUNC9(dev, val, reg);
		}
	}

	return insn->n;
}
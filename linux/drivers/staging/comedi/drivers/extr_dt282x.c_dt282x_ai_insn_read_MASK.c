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
struct dt282x_private {int adcsr; int supcsr; scalar_t__ ad_2scomp; } ;
struct comedi_subdevice {unsigned int maxdata; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; struct dt282x_private* private; } ;

/* Variables and functions */
 int DT2821_ADCSR_ADCLK ; 
 int /*<<< orphan*/  DT2821_ADCSR_ADDONE ; 
 int /*<<< orphan*/  DT2821_ADCSR_MUXBUSY ; 
 scalar_t__ DT2821_ADCSR_REG ; 
 scalar_t__ DT2821_ADDAT_REG ; 
 int DT2821_SUPCSR_PRLD ; 
 scalar_t__ DT2821_SUPCSR_REG ; 
 int DT2821_SUPCSR_STRIG ; 
 unsigned int FUNC0 (struct comedi_subdevice*,unsigned int) ; 
 int FUNC1 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dt282x_ai_timeout ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn,
			       unsigned int *data)
{
	struct dt282x_private *devpriv = dev->private;
	unsigned int val;
	int ret;
	int i;

	/* XXX should we really be enabling the ad clock here? */
	devpriv->adcsr = DT2821_ADCSR_ADCLK;
	FUNC4(devpriv->adcsr, dev->iobase + DT2821_ADCSR_REG);

	FUNC2(dev, 1, &insn->chanspec);

	FUNC4(devpriv->supcsr | DT2821_SUPCSR_PRLD,
	     dev->iobase + DT2821_SUPCSR_REG);
	ret = FUNC1(dev, s, insn,
			     dt282x_ai_timeout, DT2821_ADCSR_MUXBUSY);
	if (ret)
		return ret;

	for (i = 0; i < insn->n; i++) {
		FUNC4(devpriv->supcsr | DT2821_SUPCSR_STRIG,
		     dev->iobase + DT2821_SUPCSR_REG);

		ret = FUNC1(dev, s, insn,
				     dt282x_ai_timeout, DT2821_ADCSR_ADDONE);
		if (ret)
			return ret;

		val = FUNC3(dev->iobase + DT2821_ADDAT_REG);
		val &= s->maxdata;
		if (devpriv->ad_2scomp)
			val = FUNC0(s, val);

		data[i] = val;
	}

	return i;
}
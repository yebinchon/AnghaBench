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
struct comedi_device {scalar_t__ iobase; struct apci3120_private* private; } ;
struct apci3120_private {int mode; } ;

/* Variables and functions */
 scalar_t__ APCI3120_AI_FIFO_REG ; 
 scalar_t__ APCI3120_MODE_REG ; 
 int APCI3120_MODE_TIMER2_AS_TIMER ; 
 int APCI3120_MODE_TIMER2_CLK_OSC ; 
 int /*<<< orphan*/  APCI3120_TIMER_MODE4 ; 
 int /*<<< orphan*/  CMDF_ROUND_NEAREST ; 
 int /*<<< orphan*/  apci3120_ai_eoc ; 
 unsigned int FUNC0 (struct comedi_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC5 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct comedi_device *dev,
				 struct comedi_subdevice *s,
				 struct comedi_insn *insn,
				 unsigned int *data)
{
	struct apci3120_private *devpriv = dev->private;
	unsigned int divisor;
	int ret;
	int i;

	/* set mode for A/D conversions by software trigger with timer 0 */
	devpriv->mode = APCI3120_MODE_TIMER2_CLK_OSC |
			APCI3120_MODE_TIMER2_AS_TIMER;
	FUNC7(devpriv->mode, dev->iobase + APCI3120_MODE_REG);

	/* load chanlist for single channel scan */
	FUNC1(dev, s, 1, &insn->chanspec);

	/*
	 * Timer 0 is used in MODE4 (software triggered strobe) to set the
	 * conversion time for each acquisition. Each conversion is triggered
	 * when the divisor is written to the timer, The conversion is done
	 * when the EOC bit in the status register is '0'.
	 */
	FUNC3(dev, 0, APCI3120_TIMER_MODE4);
	FUNC2(dev, 0, true);

	/* fixed conversion time of 10 us */
	divisor = FUNC0(dev, 0, 10000, CMDF_ROUND_NEAREST);

	for (i = 0; i < insn->n; i++) {
		/* trigger conversion */
		FUNC4(dev, 0, divisor);

		ret = FUNC5(dev, s, insn, apci3120_ai_eoc, 0);
		if (ret)
			return ret;

		data[i] = FUNC6(dev->iobase + APCI3120_AI_FIFO_REG);
	}

	return insn->n;
}
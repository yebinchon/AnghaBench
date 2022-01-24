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
struct comedi_subdevice {unsigned int maxdata; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 unsigned char AIO12_8_ADC_ACQ_3USEC ; 
 unsigned char FUNC0 (unsigned int) ; 
 unsigned char AIO12_8_ADC_MODE_NORMAL ; 
 unsigned char FUNC1 (unsigned int) ; 
 scalar_t__ AIO12_8_ADC_REG ; 
 scalar_t__ AIO12_8_STATUS_REG ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aio_aio12_8_ai_eoc ; 
 unsigned int FUNC4 (struct comedi_subdevice*,unsigned int) ; 
 scalar_t__ FUNC5 (struct comedi_subdevice*,unsigned int) ; 
 int FUNC6 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 unsigned int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn,
			       unsigned int *data)
{
	unsigned int chan = FUNC2(insn->chanspec);
	unsigned int range = FUNC3(insn->chanspec);
	unsigned int val;
	unsigned char control;
	int ret;
	int i;

	/*
	 * Setup the control byte for internal 2MHz clock, 3uS conversion,
	 * at the desired range of the requested channel.
	 */
	control = AIO12_8_ADC_MODE_NORMAL | AIO12_8_ADC_ACQ_3USEC |
		  FUNC1(range) | FUNC0(chan);

	/* Read status to clear EOC latch */
	FUNC7(dev->iobase + AIO12_8_STATUS_REG);

	for (i = 0; i < insn->n; i++) {
		/*  Setup and start conversion */
		FUNC9(control, dev->iobase + AIO12_8_ADC_REG);

		/*  Wait for conversion to complete */
		ret = FUNC6(dev, s, insn, aio_aio12_8_ai_eoc, 0);
		if (ret)
			return ret;

		val = FUNC8(dev->iobase + AIO12_8_ADC_REG) & s->maxdata;

		/* munge bipolar 2's complement data to offset binary */
		if (FUNC5(s, range))
			val = FUNC4(s, val);

		data[i] = val;
	}

	return insn->n;
}
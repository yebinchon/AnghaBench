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
struct comedi_device {scalar_t__ mmio; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int) ; 
 scalar_t__ MF6X4_ADCTRL_REG ; 
 scalar_t__ MF6X4_ADDATA_REG ; 
 scalar_t__ MF6X4_ADSTART_REG ; 
 unsigned int FUNC2 (struct comedi_subdevice*,unsigned int) ; 
 int FUNC3 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  mf6x4_ai_eoc ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
			      struct comedi_subdevice *s,
			      struct comedi_insn *insn,
			      unsigned int *data)
{
	unsigned int chan = FUNC0(insn->chanspec);
	unsigned int d;
	int ret;
	int i;

	/* Set the ADC channel number in the scan list */
	FUNC5(FUNC1(chan), dev->mmio + MF6X4_ADCTRL_REG);

	for (i = 0; i < insn->n; i++) {
		/* Trigger ADC conversion by reading ADSTART */
		FUNC4(dev->mmio + MF6X4_ADSTART_REG);

		ret = FUNC3(dev, s, insn, mf6x4_ai_eoc, 0);
		if (ret)
			return ret;

		/* Read the actual value */
		d = FUNC4(dev->mmio + MF6X4_ADDATA_REG);
		d &= s->maxdata;
		/* munge the 2's complement data to offset binary */
		data[i] = FUNC2(s, d);
	}

	FUNC5(0x0, dev->mmio + MF6X4_ADCTRL_REG);

	return insn->n;
}
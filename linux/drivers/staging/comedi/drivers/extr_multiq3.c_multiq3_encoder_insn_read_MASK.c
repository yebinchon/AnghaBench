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
struct comedi_subdevice {int maxdata; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MULTIQ3_BP_RESET ; 
 int MULTIQ3_CTRL_EN ; 
 int FUNC1 (unsigned int) ; 
 scalar_t__ MULTIQ3_ENC_CTRL_REG ; 
 scalar_t__ MULTIQ3_ENC_DATA_REG ; 
 int /*<<< orphan*/  MULTIQ3_TRSFRCNTR_OL ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
				     struct comedi_subdevice *s,
				     struct comedi_insn *insn,
				     unsigned int *data)
{
	unsigned int chan = FUNC0(insn->chanspec);
	unsigned int val;
	int i;

	for (i = 0; i < insn->n; i++) {
		/* select encoder channel */
		FUNC3(dev, MULTIQ3_CTRL_EN |
				      FUNC1(chan));

		/* reset the byte pointer */
		FUNC4(MULTIQ3_BP_RESET, dev->iobase + MULTIQ3_ENC_CTRL_REG);

		/* latch the data */
		FUNC4(MULTIQ3_TRSFRCNTR_OL, dev->iobase + MULTIQ3_ENC_CTRL_REG);

		/* read the 24-bit encoder data (lsb/mid/msb) */
		val = FUNC2(dev->iobase + MULTIQ3_ENC_DATA_REG);
		val |= (FUNC2(dev->iobase + MULTIQ3_ENC_DATA_REG) << 8);
		val |= (FUNC2(dev->iobase + MULTIQ3_ENC_DATA_REG) << 16);

		/*
		 * Munge the data so that the reset value is in the middle
		 * of the maxdata range, i.e.:
		 *
		 * real value	comedi value
		 * 0xffffff	0x7fffff	1 negative count
		 * 0x000000	0x800000	reset value
		 * 0x000001	0x800001	1 positive count
		 *
		 * It's possible for the 24-bit counter to overflow but it
		 * would normally take _quite_ a few turns. A 2000 line
		 * encoder in quadrature results in 8000 counts/rev. So about
		 * 1048 turns in either direction can be measured without
		 * an overflow.
		 */
		data[i] = (val + ((s->maxdata + 1) >> 1)) & s->maxdata;
	}

	return insn->n;
}
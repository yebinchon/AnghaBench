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
struct comedi_device {unsigned long iobase; } ;

/* Variables and functions */
 unsigned int AREF_GROUND ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ PCMMIO_AI_2ND_ADC_OFFSET ; 
 unsigned char FUNC3 (unsigned int) ; 
 unsigned char PCMMIO_AI_CMD_ODD_CHAN ; 
 unsigned char FUNC4 (unsigned int) ; 
 scalar_t__ PCMMIO_AI_CMD_REG ; 
 unsigned char PCMMIO_AI_CMD_SE ; 
 scalar_t__ PCMMIO_AI_LSB_REG ; 
 scalar_t__ PCMMIO_AI_MSB_REG ; 
 unsigned int FUNC5 (struct comedi_subdevice*,unsigned int) ; 
 scalar_t__ FUNC6 (struct comedi_subdevice*,unsigned int) ; 
 int FUNC7 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  pcmmio_ai_eoc ; 

__attribute__((used)) static int FUNC10(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn,
			       unsigned int *data)
{
	unsigned long iobase = dev->iobase;
	unsigned int chan = FUNC1(insn->chanspec);
	unsigned int range = FUNC2(insn->chanspec);
	unsigned int aref = FUNC0(insn->chanspec);
	unsigned char cmd = 0;
	unsigned int val;
	int ret;
	int i;

	/*
	 * The PCM-MIO uses two Linear Tech LTC1859CG 8-channel A/D converters.
	 * The devices use a full duplex serial interface which transmits and
	 * receives data simultaneously. An 8-bit command is shifted into the
	 * ADC interface to configure it for the next conversion. At the same
	 * time, the data from the previous conversion is shifted out of the
	 * device. Consequently, the conversion result is delayed by one
	 * conversion from the command word.
	 *
	 * Setup the cmd for the conversions then do a dummy conversion to
	 * flush the junk data. Then do each conversion requested by the
	 * comedi_insn. Note that the last conversion will leave junk data
	 * in ADC which will get flushed on the next comedi_insn.
	 */

	if (chan > 7) {
		chan -= 8;
		iobase += PCMMIO_AI_2ND_ADC_OFFSET;
	}

	if (aref == AREF_GROUND)
		cmd |= PCMMIO_AI_CMD_SE;
	if (chan % 2)
		cmd |= PCMMIO_AI_CMD_ODD_CHAN;
	cmd |= FUNC3(chan / 2);
	cmd |= FUNC4(range);

	FUNC9(cmd, iobase + PCMMIO_AI_CMD_REG);

	ret = FUNC7(dev, s, insn, pcmmio_ai_eoc, 0);
	if (ret)
		return ret;

	val = FUNC8(iobase + PCMMIO_AI_LSB_REG);
	val |= FUNC8(iobase + PCMMIO_AI_MSB_REG) << 8;

	for (i = 0; i < insn->n; i++) {
		FUNC9(cmd, iobase + PCMMIO_AI_CMD_REG);

		ret = FUNC7(dev, s, insn, pcmmio_ai_eoc, 0);
		if (ret)
			return ret;

		val = FUNC8(iobase + PCMMIO_AI_LSB_REG);
		val |= FUNC8(iobase + PCMMIO_AI_MSB_REG) << 8;

		/* bipolar data is two's complement */
		if (FUNC6(s, range))
			val = FUNC5(s, val);

		data[i] = val;
	}

	return insn->n;
}
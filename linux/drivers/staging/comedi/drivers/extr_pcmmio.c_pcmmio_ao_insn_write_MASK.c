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
struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {unsigned long iobase; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PCMMIO_AO_2ND_DAC_OFFSET ; 
 unsigned char FUNC2 (unsigned int) ; 
 scalar_t__ PCMMIO_AO_CMD_REG ; 
 unsigned char PCMMIO_AO_CMD_WR_CODE_UPDATE ; 
 unsigned char PCMMIO_AO_CMD_WR_SPAN_UPDATE ; 
 scalar_t__ PCMMIO_AO_LSB_REG ; 
 unsigned char FUNC3 (unsigned int) ; 
 scalar_t__ PCMMIO_AO_MSB_REG ; 
 int FUNC4 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  pcmmio_ao_eoc ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn,
				unsigned int *data)
{
	unsigned long iobase = dev->iobase;
	unsigned int chan = FUNC0(insn->chanspec);
	unsigned int range = FUNC1(insn->chanspec);
	unsigned char cmd = 0;
	int ret;
	int i;

	/*
	 * The PCM-MIO has two Linear Tech LTC2704 DAC devices. Each device
	 * is a 4-channel converter with software-selectable output range.
	 */

	if (chan > 3) {
		cmd |= FUNC2(chan - 4);
		iobase += PCMMIO_AO_2ND_DAC_OFFSET;
	} else {
		cmd |= FUNC2(chan);
	}

	/* set the range for the channel */
	FUNC5(FUNC3(range), iobase + PCMMIO_AO_LSB_REG);
	FUNC5(0, iobase + PCMMIO_AO_MSB_REG);
	FUNC5(cmd | PCMMIO_AO_CMD_WR_SPAN_UPDATE, iobase + PCMMIO_AO_CMD_REG);

	ret = FUNC4(dev, s, insn, pcmmio_ao_eoc, 0);
	if (ret)
		return ret;

	for (i = 0; i < insn->n; i++) {
		unsigned int val = data[i];

		/* write the data to the channel */
		FUNC5(val & 0xff, iobase + PCMMIO_AO_LSB_REG);
		FUNC5((val >> 8) & 0xff, iobase + PCMMIO_AO_MSB_REG);
		FUNC5(cmd | PCMMIO_AO_CMD_WR_CODE_UPDATE,
		     iobase + PCMMIO_AO_CMD_REG);

		ret = FUNC4(dev, s, insn, pcmmio_ao_eoc, 0);
		if (ret)
			return ret;

		s->readback[chan] = val;
	}

	return insn->n;
}
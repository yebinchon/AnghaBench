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
 unsigned long FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
				    struct comedi_subdevice *s,
				    struct comedi_insn *insn,
				    unsigned int *data)
{
	unsigned int chan = FUNC0(insn->chanspec);
	unsigned long offset = dev->iobase + FUNC1(chan);
	unsigned int val = s->readback[chan];
	int i;

	for (i = 0; i < insn->n; i++) {
		val = data[i];

		/*
		 * Write the LSB then MSB.
		 *
		 * If the simultaneous xfer mode is selected by the
		 * jumper on the card, a read instruction is needed
		 * in order to initiate the simultaneous transfer.
		 * Otherwise, the DAC will be updated when the MSB
		 * is written.
		 */
		FUNC2(val & 0x00ff, offset);
		FUNC2((val >> 8) & 0x00ff, offset + 1);
	}
	s->readback[chan] = val;

	return insn->n;
}
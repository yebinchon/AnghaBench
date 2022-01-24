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
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int ATAO_CFG2_CALLD_NOP ; 
 scalar_t__ ATAO_CFG2_REG ; 
 unsigned int ATAO_CFG2_SCLK ; 
 unsigned int ATAO_CFG2_SDATA ; 
 int FUNC1 (int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
				 struct comedi_subdevice *s,
				 struct comedi_insn *insn,
				 unsigned int *data)
{
	unsigned int chan = FUNC2(insn->chanspec);

	if (insn->n) {
		unsigned int val = data[insn->n - 1];
		unsigned int bitstring = ((chan & 0x7) << 8) | val;
		unsigned int bits;
		int bit;

		/* write the channel and last data value to the caldac */
		/* clock the bitstring to the caldac; MSB -> LSB */
		for (bit = FUNC1(10); bit; bit >>= 1) {
			bits = (bit & bitstring) ? ATAO_CFG2_SDATA : 0;

			FUNC3(bits, dev->iobase + ATAO_CFG2_REG);
			FUNC3(bits | ATAO_CFG2_SCLK,
			     dev->iobase + ATAO_CFG2_REG);
		}

		/* strobe the caldac to load the value */
		FUNC3(FUNC0(chan), dev->iobase + ATAO_CFG2_REG);
		FUNC3(ATAO_CFG2_CALLD_NOP, dev->iobase + ATAO_CFG2_REG);

		s->readback[chan] = val;
	}

	return insn->n;
}
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
struct comedi_subdevice {unsigned int n_chan; unsigned int io_bits; scalar_t__ private; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ mmio; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int FUNC3 (int) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
				 struct comedi_subdevice *s,
				 struct comedi_insn *insn,
				 unsigned int *data)
{
	unsigned long base_port = (unsigned long)s->private;
	unsigned int base_chan = FUNC0(insn->chanspec);
	int last_port_offset = FUNC1(s->n_chan - 1);
	unsigned int read_bits = 0;
	int port_offset;

	for (port_offset = FUNC1(base_chan);
	     port_offset <= last_port_offset; port_offset++) {
		unsigned int port = base_port + port_offset;
		int base_port_channel = FUNC3(port_offset);
		unsigned int port_mask, port_data, bits;
		int bitshift = base_port_channel - base_chan;

		if (bitshift >= 32)
			break;
		port_mask = data[0];
		port_data = data[1];
		if (bitshift > 0) {
			port_mask >>= bitshift;
			port_data >>= bitshift;
		} else {
			port_mask <<= -bitshift;
			port_data <<= -bitshift;
		}
		port_mask &= 0xff;
		port_data &= 0xff;

		/* update the outputs */
		if (port_mask) {
			bits = FUNC4(dev->mmio + FUNC2(port));
			bits ^= s->io_bits;	/* invert if necessary */
			bits &= ~port_mask;
			bits |= (port_data & port_mask);
			bits ^= s->io_bits;	/* invert back */
			FUNC5(bits, dev->mmio + FUNC2(port));
		}

		/* read back the actual state */
		bits = FUNC4(dev->mmio + FUNC2(port));
		bits ^= s->io_bits;	/* invert if necessary */
		if (bitshift > 0)
			bits <<= bitshift;
		else
			bits >>= -bitshift;

		read_bits |= bits;
	}
	data[1] = read_bits;
	return insn->n;
}
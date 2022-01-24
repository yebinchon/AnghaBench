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
struct comedi_subdevice {int n_chan; unsigned int state; unsigned int io_bits; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct comedi_subdevice*,unsigned int*) ; 
 unsigned int FUNC1 (struct comedi_device*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct comedi_subdevice*) ; 
 int FUNC3 (struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,unsigned int,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn,
				unsigned int *data)
{
	int asic = FUNC2(s);
	int port = FUNC3(s);
	unsigned int chanmask = (1 << s->n_chan) - 1;
	unsigned int mask;
	unsigned int val;

	mask = FUNC0(s, data);
	if (mask) {
		/*
		 * Outputs are inverted, invert the state and
		 * update the channels.
		 *
		 * The s->io_bits mask makes sure the input channels
		 * are '0' so that the outputs pins stay in a high
		 * z-state.
		 */
		val = ~s->state & chanmask;
		val &= s->io_bits;
		FUNC4(dev, val, asic, 0, port);
	}

	/* get inverted state of the channels from the port */
	val = FUNC1(dev, asic, 0, port);

	/* return the true state of the channels */
	data[1] = ~val & chanmask;

	return insn->n;
}
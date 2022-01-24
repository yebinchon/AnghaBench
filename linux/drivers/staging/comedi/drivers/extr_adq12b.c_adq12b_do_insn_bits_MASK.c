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
struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ ADQ12B_OUTBR ; 
 unsigned int FUNC0 (struct comedi_subdevice*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn,
			       unsigned int *data)
{
	unsigned int mask;
	unsigned int chan;
	unsigned int val;

	mask = FUNC0(s, data);
	if (mask) {
		for (chan = 0; chan < 8; chan++) {
			if ((mask >> chan) & 0x01) {
				val = (s->state >> chan) & 0x01;
				FUNC1((val << 3) | chan,
				     dev->iobase + ADQ12B_OUTBR);
			}
		}
	}

	data[1] = s->state;

	return insn->n;
}
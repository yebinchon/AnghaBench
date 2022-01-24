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
struct comedi_subdevice {int state; int io_bits; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct comedi_subdevice*,unsigned int*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
				  struct comedi_subdevice *s,
				  struct comedi_insn *insn,
				  unsigned int *data)
{
	unsigned int mask;
	unsigned int val;

	mask = FUNC0(s, data);
	if (mask) {
		if (mask & 0xff)
			FUNC2(s->state & 0xff, dev->iobase + 80);
		if (mask & 0xff0000)
			FUNC2((s->state >> 16) & 0xff, dev->iobase + 112);
	}

	val = FUNC1(dev->iobase + 80);
	val |= (FUNC1(dev->iobase + 64) << 8);
	if (s->io_bits & 0xff0000)
		val |= (FUNC1(dev->iobase + 112) << 16);
	else
		val |= (FUNC1(dev->iobase + 96) << 16);

	data[1] = val;

	return insn->n;
}
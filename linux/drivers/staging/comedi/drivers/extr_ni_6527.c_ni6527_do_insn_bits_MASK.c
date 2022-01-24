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
struct comedi_subdevice {int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ mmio; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 unsigned int FUNC1 (struct comedi_subdevice*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn,
			       unsigned int *data)
{
	unsigned int mask;

	mask = FUNC1(s, data);
	if (mask) {
		/* Outputs are inverted */
		unsigned int val = s->state ^ 0xffffff;

		if (mask & 0x0000ff)
			FUNC2(val & 0xff, dev->mmio + FUNC0(0));
		if (mask & 0x00ff00)
			FUNC2((val >> 8) & 0xff,
			       dev->mmio + FUNC0(1));
		if (mask & 0xff0000)
			FUNC2((val >> 16) & 0xff,
			       dev->mmio + FUNC0(2));
	}

	data[1] = s->state;

	return insn->n;
}
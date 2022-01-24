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
 unsigned int PARPORT_CTRL_BIDIR_ENA ; 
 unsigned int PARPORT_CTRL_IRQ_ENA ; 
 scalar_t__ PARPORT_CTRL_REG ; 
 scalar_t__ FUNC0 (struct comedi_subdevice*,unsigned int*) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
				      struct comedi_subdevice *s,
				      struct comedi_insn *insn,
				      unsigned int *data)
{
	unsigned int ctrl;

	if (FUNC0(s, data)) {
		ctrl = FUNC1(dev->iobase + PARPORT_CTRL_REG);
		ctrl &= (PARPORT_CTRL_IRQ_ENA | PARPORT_CTRL_BIDIR_ENA);
		ctrl |= s->state;
		FUNC2(ctrl, dev->iobase + PARPORT_CTRL_REG);
	}

	data[1] = s->state;

	return insn->n;
}
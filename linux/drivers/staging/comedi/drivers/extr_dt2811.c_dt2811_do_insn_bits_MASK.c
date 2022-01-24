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
 scalar_t__ DT2811_DO_REG ; 
 scalar_t__ FUNC0 (struct comedi_subdevice*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn,
			       unsigned int *data)
{
	if (FUNC0(s, data))
		FUNC1(s->state, dev->iobase + DT2811_DO_REG);

	data[1] = s->state;

	return insn->n;
}
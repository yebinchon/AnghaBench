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
struct das08_private_struct {int /*<<< orphan*/  do_mux_bits; } ;
struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; scalar_t__ iobase; struct das08_private_struct* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  DAS08_CONTROL_DO_MASK ; 
 scalar_t__ DAS08_CONTROL_REG ; 
 scalar_t__ FUNC1 (struct comedi_subdevice*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
			      struct comedi_subdevice *s,
			      struct comedi_insn *insn, unsigned int *data)
{
	struct das08_private_struct *devpriv = dev->private;

	if (FUNC1(s, data)) {
		/* prevent race with setting of analog input mux */
		FUNC3(&dev->spinlock);
		devpriv->do_mux_bits &= ~DAS08_CONTROL_DO_MASK;
		devpriv->do_mux_bits |= FUNC0(s->state);
		FUNC2(devpriv->do_mux_bits, dev->iobase + DAS08_CONTROL_REG);
		FUNC4(&dev->spinlock);
	}

	data[1] = s->state;

	return insn->n;
}
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
struct das800_private {int do_bits; } ;
struct comedi_subdevice {int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; struct das800_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL1 ; 
 int CONTROL1_INTE ; 
 scalar_t__ FUNC0 (struct comedi_subdevice*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn,
			       unsigned int *data)
{
	struct das800_private *devpriv = dev->private;
	unsigned long irq_flags;

	if (FUNC0(s, data)) {
		devpriv->do_bits = s->state << 4;

		FUNC2(&dev->spinlock, irq_flags);
		FUNC1(dev, CONTROL1_INTE | devpriv->do_bits,
				 CONTROL1);
		FUNC3(&dev->spinlock, irq_flags);
	}

	data[1] = s->state;

	return insn->n;
}
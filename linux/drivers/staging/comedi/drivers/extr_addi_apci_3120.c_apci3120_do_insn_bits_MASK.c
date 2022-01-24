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
struct comedi_device {scalar_t__ iobase; struct apci3120_private* private; } ;
struct apci3120_private {unsigned int do_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ APCI3120_CTR0_REG ; 
 scalar_t__ FUNC1 (struct comedi_subdevice*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
				 struct comedi_subdevice *s,
				 struct comedi_insn *insn,
				 unsigned int *data)
{
	struct apci3120_private *devpriv = dev->private;

	if (FUNC1(s, data)) {
		devpriv->do_bits = s->state;
		FUNC2(FUNC0(devpriv->do_bits),
		     dev->iobase + APCI3120_CTR0_REG);
	}

	data[1] = s->state;

	return insn->n;
}
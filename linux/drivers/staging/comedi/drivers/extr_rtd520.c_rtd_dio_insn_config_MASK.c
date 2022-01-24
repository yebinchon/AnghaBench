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
struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ mmio; } ;

/* Variables and functions */
 scalar_t__ LAS0_DIO0_CTRL ; 
 scalar_t__ LAS0_DIO_STATUS ; 
 int FUNC0 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn,
			       unsigned int *data)
{
	int ret;

	ret = FUNC0(dev, s, insn, data, 0);
	if (ret)
		return ret;

	/* TODO support digital match interrupts and strobes */

	/* set direction */
	FUNC1(0x01, dev->mmio + LAS0_DIO_STATUS);
	FUNC1(s->io_bits & 0xff, dev->mmio + LAS0_DIO0_CTRL);

	/* clear interrupts */
	FUNC1(0x00, dev->mmio + LAS0_DIO_STATUS);

	/* port1 can only be all input or all output */

	/* there are also 2 user input lines and 2 user output lines */

	return insn->n;
}
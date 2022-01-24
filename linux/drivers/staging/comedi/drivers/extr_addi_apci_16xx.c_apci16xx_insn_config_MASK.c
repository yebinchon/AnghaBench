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
struct comedi_subdevice {int /*<<< orphan*/  index; int /*<<< orphan*/  io_bits; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn,
				unsigned int *data)
{
	unsigned int chan = FUNC1(insn->chanspec);
	unsigned int mask;
	int ret;

	if (chan < 8)
		mask = 0x000000ff;
	else if (chan < 16)
		mask = 0x0000ff00;
	else if (chan < 24)
		mask = 0x00ff0000;
	else
		mask = 0xff000000;

	ret = FUNC2(dev, s, insn, data, mask);
	if (ret)
		return ret;

	FUNC3(s->io_bits, dev->iobase + FUNC0(s->index));

	return insn->n;
}
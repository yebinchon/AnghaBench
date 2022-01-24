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
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn,
				unsigned int *data)
{
	unsigned int chan = FUNC0(insn->chanspec);
	unsigned int mask;
	int ret;

	if (chan < 4)
		mask = 0x0f;
	else
		mask = 0xf0;

	ret = FUNC1(dev, s, insn, data, mask);
	if (ret)
		return ret;

	FUNC2(dev, (s->io_bits & 0x01) | ((s->io_bits & 0x10) >> 3));

	return insn->n;
}
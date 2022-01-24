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
struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int FUNC1 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  labpc_eeprom_ready ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
				   struct comedi_subdevice *s,
				   struct comedi_insn *insn,
				   unsigned int *data)
{
	unsigned int chan = FUNC0(insn->chanspec);
	int ret;

	/* only allow writes to user area of eeprom */
	if (chan < 16 || chan > 127)
		return -EINVAL;

	/*
	 * Only write the last data value to the eeprom. Preceding
	 * data would be overwritten anyway.
	 */
	if (insn->n > 0) {
		unsigned int val = data[insn->n - 1];

		ret = FUNC1(dev, s, insn, labpc_eeprom_ready, 0);
		if (ret)
			return ret;

		FUNC2(dev, chan, val);
		s->readback[chan] = val;
	}

	return insn->n;
}
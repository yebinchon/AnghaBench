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
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
			    struct comedi_subdevice *s,
			    struct comedi_insn *insn,
			    unsigned int *data)
{
	unsigned int chan = FUNC0(insn->chanspec);

	/*
	 * It doesn't make sense to support more than one value here
	 * because it would just overwrite the PWM buffer.
	 */
	if (insn->n != 1)
		return -EINVAL;

	/*
	 * The sign is set via a special INSN only, this gives us 8 bits
	 * for normal operation, sign is 0 by default.
	 */
	FUNC1(dev, s, chan, data[0], 0);

	return insn->n;
}
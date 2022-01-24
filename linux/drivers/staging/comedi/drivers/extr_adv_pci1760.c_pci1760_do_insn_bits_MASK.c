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
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI1760_CMD_SET_DO ; 
 scalar_t__ FUNC0 (struct comedi_subdevice*,unsigned int*) ; 
 int FUNC1 (struct comedi_device*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn,
				unsigned int *data)
{
	int ret;

	if (FUNC0(s, data)) {
		ret = FUNC1(dev, PCI1760_CMD_SET_DO, s->state);
		if (ret < 0)
			return ret;
	}

	data[1] = s->state;

	return insn->n;
}
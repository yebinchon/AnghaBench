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
struct comedi_subdevice {int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_C_READ_DIG ; 
 int /*<<< orphan*/  DT_C_WRITE_DIG ; 
 scalar_t__ FUNC0 (struct comedi_subdevice*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn,
				unsigned int *data)
{
	int which = (s == &dev->subdevices[3]) ? 1 : 0;
	unsigned int val = 0;

	if (FUNC0(s, data)) {
		FUNC2(dev, DT_C_WRITE_DIG);
		FUNC3(dev, which);
		FUNC3(dev, s->state);
	}

	FUNC2(dev, DT_C_READ_DIG);
	FUNC3(dev, which);
	FUNC1(dev, &val);

	data[1] = val;

	return insn->n;
}
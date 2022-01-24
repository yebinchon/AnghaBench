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
 int FUNC0 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dt2811_ai_eoc ; 
 unsigned int FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn,
			       unsigned int *data)
{
	int ret;
	int i;

	/* We will already be in Mode 0 */
	for (i = 0; i < insn->n; i++) {
		/* load chanspec and trigger conversion */
		FUNC2(dev, insn->chanspec);

		ret = FUNC0(dev, s, insn, dt2811_ai_eoc, 0);
		if (ret)
			return ret;

		data[i] = FUNC1(dev, s);
	}

	return insn->n;
}
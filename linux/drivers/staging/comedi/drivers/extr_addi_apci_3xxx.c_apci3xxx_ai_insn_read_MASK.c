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
struct comedi_device {scalar_t__ mmio; } ;

/* Variables and functions */
 int /*<<< orphan*/  apci3xxx_ai_eoc ; 
 int FUNC0 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
				 struct comedi_subdevice *s,
				 struct comedi_insn *insn,
				 unsigned int *data)
{
	int ret;
	int i;

	ret = FUNC0(dev, insn->chanspec);
	if (ret)
		return ret;

	for (i = 0; i < insn->n; i++) {
		/* Start the conversion */
		FUNC3(0x80000, dev->mmio + 8);

		/* Wait the EOS */
		ret = FUNC1(dev, s, insn, apci3xxx_ai_eoc, 0);
		if (ret)
			return ret;

		/* Read the analog value */
		data[i] = FUNC2(dev->mmio + 28);
	}

	return insn->n;
}
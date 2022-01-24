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
 unsigned int FUNC1 (struct comedi_device*,unsigned int) ; 
 unsigned int FUNC2 (struct comedi_subdevice*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
				      struct comedi_subdevice *s,
				      struct comedi_insn *insn,
				      unsigned int *data)
{
	unsigned int chan = FUNC0(insn->chanspec);
	unsigned int val;
	int i;

	for (i = 0; i < insn->n; i++) {
		val = FUNC1(dev, chan);

		/* munge two's complement value to offset binary */
		data[i] = FUNC2(s, val);
	}

	return insn->n;
}
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
struct comedi_device {struct apci3501_private* private; } ;
struct apci3501_private {int /*<<< orphan*/  amcc; } ;

/* Variables and functions */
 unsigned short FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
				     struct comedi_subdevice *s,
				     struct comedi_insn *insn,
				     unsigned int *data)
{
	struct apci3501_private *devpriv = dev->private;
	unsigned short addr = FUNC0(insn->chanspec);
	unsigned int val;
	unsigned int i;

	if (insn->n) {
		/* No point reading the same EEPROM location more than once. */
		val = FUNC1(devpriv->amcc, 2 * addr);
		for (i = 0; i < insn->n; i++)
			data[i] = val;
	}

	return insn->n;
}
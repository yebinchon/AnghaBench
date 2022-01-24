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
struct comedi_subdevice {struct comedi_8254* private; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;
struct comedi_8254 {scalar_t__* busy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 unsigned int FUNC1 (struct comedi_8254*,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
				 struct comedi_subdevice *s,
				 struct comedi_insn *insn,
				 unsigned int *data)
{
	struct comedi_8254 *i8254 = s->private;
	unsigned int chan = FUNC0(insn->chanspec);
	int i;

	if (i8254->busy[chan])
		return -EBUSY;

	for (i = 0; i < insn->n; i++)
		data[i] = FUNC1(i8254, chan);

	return insn->n;
}
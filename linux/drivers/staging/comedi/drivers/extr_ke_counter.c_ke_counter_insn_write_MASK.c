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
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
				 struct comedi_subdevice *s,
				 struct comedi_insn *insn,
				 unsigned int *data)
{
	unsigned int chan = FUNC0(insn->chanspec);
	unsigned int val;
	int i;

	for (i = 0; i < insn->n; i++) {
		val = data[0];

		/* Order matters */
		FUNC5((val >> 24) & 0xff, dev->iobase + FUNC4(chan));
		FUNC5((val >> 16) & 0xff, dev->iobase + FUNC3(chan));
		FUNC5((val >> 8) & 0xff, dev->iobase + FUNC2(chan));
		FUNC5((val >> 0) & 0xff, dev->iobase + FUNC1(chan));
	}

	return insn->n;
}
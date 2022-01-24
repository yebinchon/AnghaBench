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
struct comedi_subdevice {unsigned int maxdata; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FL512_AI_LSB_REG ; 
 scalar_t__ FL512_AI_MSB_REG ; 
 scalar_t__ FL512_AI_MUX_REG ; 
 scalar_t__ FL512_AI_START_CONV_REG ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
			      struct comedi_subdevice *s,
			      struct comedi_insn *insn,
			      unsigned int *data)
{
	unsigned int chan = FUNC0(insn->chanspec);
	unsigned int val;
	int i;

	FUNC2(chan, dev->iobase + FL512_AI_MUX_REG);

	for (i = 0; i < insn->n; i++) {
		FUNC2(0, dev->iobase + FL512_AI_START_CONV_REG);

		/* XXX should test "done" flag instead of delay */
		FUNC3(30, 100);

		val = FUNC1(dev->iobase + FL512_AI_LSB_REG);
		val |= (FUNC1(dev->iobase + FL512_AI_MSB_REG) << 8);
		val &= s->maxdata;

		data[i] = val;
	}

	return insn->n;
}
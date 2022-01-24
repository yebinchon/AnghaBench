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
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSCDR ; 
 int /*<<< orphan*/  CSCIR ; 
 int PADR ; 
 int PBDR ; 
 int PCDR ; 
 unsigned int FUNC0 (struct comedi_subdevice*,unsigned int*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
			     struct comedi_subdevice *s,
			     struct comedi_insn *insn,
			     unsigned int *data)
{
	unsigned int mask;
	unsigned int val;

	/*
	 * Ports A and B are straight forward: each bit corresponds to an
	 * output pin with the same order. Port C is different: bits 0...3
	 * correspond to bits 4...7 of the output register (PCDR).
	 */

	mask = FUNC0(s, data);
	if (mask) {
		FUNC2(PADR, CSCIR);
		FUNC2(s->state & 0xff, CSCDR);

		FUNC2(PBDR, CSCIR);
		FUNC2((s->state >> 8) & 0xff, CSCDR);

		FUNC2(PCDR, CSCIR);
		val = FUNC1(CSCDR) & 0x0f;
		FUNC2(((s->state >> 12) & 0xf0) | val, CSCDR);
	}

	FUNC2(PADR, CSCIR);
	val = FUNC1(CSCDR);
	FUNC2(PBDR, CSCIR);
	val |= (FUNC1(CSCDR) << 8);
	FUNC2(PCDR, CSCIR);
	val |= ((FUNC1(CSCDR) & 0xf0) << 12);

	data[1] = val;

	return insn->n;
}
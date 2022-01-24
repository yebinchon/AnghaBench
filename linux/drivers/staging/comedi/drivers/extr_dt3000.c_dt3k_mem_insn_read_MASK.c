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
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DPR_CMD_READCODE ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ DPR_SUBSYS ; 
 int DPR_SUBSYS_MEM ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
			      struct comedi_subdevice *s,
			      struct comedi_insn *insn,
			      unsigned int *data)
{
	unsigned int addr = FUNC0(insn->chanspec);
	int i;

	for (i = 0; i < insn->n; i++) {
		FUNC4(DPR_SUBSYS_MEM, dev->mmio + DPR_SUBSYS);
		FUNC4(addr, dev->mmio + FUNC1(0));
		FUNC4(1, dev->mmio + FUNC1(1));

		FUNC2(dev, DPR_CMD_READCODE);

		data[i] = FUNC3(dev->mmio + FUNC1(2));
	}

	return i;
}
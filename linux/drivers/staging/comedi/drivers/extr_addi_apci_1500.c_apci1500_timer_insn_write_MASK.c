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
 unsigned int Z8536_CT_CMDSTAT_GCB ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int Z8536_CT_CMD_TCB ; 
 unsigned int FUNC2 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
				     struct comedi_subdevice *s,
				     struct comedi_insn *insn,
				     unsigned int *data)
{
	unsigned int chan = FUNC0(insn->chanspec);
	unsigned int cmd;

	cmd = FUNC2(dev, FUNC1(chan));
	cmd &= Z8536_CT_CMDSTAT_GCB;	/* preserve gate */
	cmd |= Z8536_CT_CMD_TCB;	/* set trigger */

	/* software trigger a timer, it only makes sense to do one write */
	if (insn->n)
		FUNC3(dev, cmd, FUNC1(chan));

	return insn->n;
}
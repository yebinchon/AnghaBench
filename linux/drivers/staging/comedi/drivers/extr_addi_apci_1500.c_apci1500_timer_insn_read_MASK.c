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
 unsigned int Z8536_CT_CMD_RCC ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
				    struct comedi_subdevice *s,
				    struct comedi_insn *insn,
				    unsigned int *data)
{
	unsigned int chan = FUNC0(insn->chanspec);
	unsigned int cmd;
	unsigned int val;
	int i;

	cmd = FUNC4(dev, FUNC1(chan));
	cmd &= Z8536_CT_CMDSTAT_GCB;	/* preserve gate */
	cmd |= Z8536_CT_CMD_RCC;	/* set RCC */

	for (i = 0; i < insn->n; i++) {
		FUNC5(dev, cmd, FUNC1(chan));

		val = FUNC4(dev, FUNC3(chan)) << 8;
		val |= FUNC4(dev, FUNC2(chan));

		data[i] = val;
	}

	return insn->n;
}
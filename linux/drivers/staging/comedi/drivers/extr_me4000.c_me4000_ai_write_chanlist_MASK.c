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
struct comedi_device {scalar_t__ iobase; } ;
struct comedi_cmd {int chanlist_len; int /*<<< orphan*/ * chanlist; } ;

/* Variables and functions */
 unsigned int AREF_DIFF ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ME4000_AI_CHANNEL_LIST_REG ; 
 unsigned int ME4000_AI_LIST_INPUT_DIFFERENTIAL ; 
 unsigned int ME4000_AI_LIST_LAST_ENTRY ; 
 unsigned int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev,
				     struct comedi_subdevice *s,
				     struct comedi_cmd *cmd)
{
	int i;

	for (i = 0; i < cmd->chanlist_len; i++) {
		unsigned int chan = FUNC1(cmd->chanlist[i]);
		unsigned int range = FUNC2(cmd->chanlist[i]);
		unsigned int aref = FUNC0(cmd->chanlist[i]);
		unsigned int entry;

		entry = chan | FUNC3(range);

		if (aref == AREF_DIFF)
			entry |= ME4000_AI_LIST_INPUT_DIFFERENTIAL;

		if (i == (cmd->chanlist_len - 1))
			entry |= ME4000_AI_LIST_LAST_ENTRY;

		FUNC4(entry, dev->iobase + ME4000_AI_CHANNEL_LIST_REG);
	}
}
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
struct pci1710_private {int saved_seglen; } ;
struct comedi_subdevice {unsigned int n_chan; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; struct pci1710_private* private; } ;
struct comedi_cmd {unsigned int* chanlist; int chanlist_len; } ;

/* Variables and functions */
 unsigned int AREF_DIFF ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
				     struct comedi_subdevice *s,
				     struct comedi_cmd *cmd)
{
	struct pci1710_private *devpriv = dev->private;
	unsigned int chan0 = FUNC1(cmd->chanlist[0]);
	unsigned int last_aref = FUNC0(cmd->chanlist[0]);
	unsigned int next_chan = (chan0 + 1) % s->n_chan;
	unsigned int chansegment[32];
	unsigned int seglen;
	int i;

	if (cmd->chanlist_len == 1) {
		devpriv->saved_seglen = cmd->chanlist_len;
		return 0;
	}

	/* first channel is always ok */
	chansegment[0] = cmd->chanlist[0];

	for (i = 1; i < cmd->chanlist_len; i++) {
		unsigned int chan = FUNC1(cmd->chanlist[i]);
		unsigned int aref = FUNC0(cmd->chanlist[i]);

		if (cmd->chanlist[0] == cmd->chanlist[i])
			break;	/*  we detected a loop, stop */

		if (aref == AREF_DIFF && (chan & 1)) {
			FUNC3(dev->class_dev,
				"Odd channel cannot be differential input!\n");
			return -EINVAL;
		}

		if (last_aref == AREF_DIFF)
			next_chan = (next_chan + 1) % s->n_chan;
		if (chan != next_chan) {
			FUNC3(dev->class_dev,
				"channel list must be continuous! chanlist[%i]=%d but must be %d or %d!\n",
				i, chan, next_chan, chan0);
			return -EINVAL;
		}

		/* next correct channel in list */
		chansegment[i] = cmd->chanlist[i];
		last_aref = aref;
	}
	seglen = i;

	for (i = 0; i < cmd->chanlist_len; i++) {
		if (cmd->chanlist[i] != chansegment[i % seglen]) {
			FUNC3(dev->class_dev,
				"bad channel, reference or range number! chanlist[%i]=%d,%d,%d and not %d,%d,%d!\n",
				i, FUNC1(chansegment[i]),
				FUNC2(chansegment[i]),
				FUNC0(chansegment[i]),
				FUNC1(cmd->chanlist[i % seglen]),
				FUNC2(cmd->chanlist[i % seglen]),
				FUNC0(chansegment[i % seglen]));
			return -EINVAL;
		}
	}
	devpriv->saved_seglen = seglen;

	return 0;
}
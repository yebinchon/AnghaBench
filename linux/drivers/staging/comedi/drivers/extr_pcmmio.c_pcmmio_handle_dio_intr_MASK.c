#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pcmmio_private {unsigned int enabled_mask; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  active; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct pcmmio_private* private; } ;
struct comedi_cmd {int chanlist_len; scalar_t__ stop_src; scalar_t__ stop_arg; int /*<<< orphan*/ * chanlist; } ;
struct TYPE_2__ {scalar_t__ scans_done; int /*<<< orphan*/  events; struct comedi_cmd cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_EOA ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRIG_COUNT ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_subdevice*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev,
				   struct comedi_subdevice *s,
				   unsigned int triggered)
{
	struct pcmmio_private *devpriv = dev->private;
	struct comedi_cmd *cmd = &s->async->cmd;
	unsigned int val = 0;
	unsigned long flags;
	int i;

	FUNC3(&devpriv->spinlock, flags);

	if (!devpriv->active)
		goto done;

	if (!(triggered & devpriv->enabled_mask))
		goto done;

	for (i = 0; i < cmd->chanlist_len; i++) {
		unsigned int chan = FUNC0(cmd->chanlist[i]);

		if (triggered & (1 << chan))
			val |= (1 << i);
	}

	FUNC1(s, &val, 1);

	if (cmd->stop_src == TRIG_COUNT &&
	    s->async->scans_done >= cmd->stop_arg)
		s->async->events |= COMEDI_CB_EOA;

done:
	FUNC4(&devpriv->spinlock, flags);

	FUNC2(dev, s);
}
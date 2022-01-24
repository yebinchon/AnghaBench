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
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; } ;
struct comedi_cmd {scalar_t__* chanlist; } ;
struct TYPE_2__ {unsigned int cur_chan; int /*<<< orphan*/  events; struct comedi_cmd cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,unsigned short*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned short FUNC3 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct comedi_device *dev,
			      struct comedi_subdevice *s)
{
	struct comedi_cmd *cmd = &s->async->cmd;
	unsigned int chan = s->async->cur_chan;
	unsigned int next_chan;
	unsigned short val;

	if (FUNC2(dev, s, NULL, 0)) {
		FUNC1(dev->class_dev, "A/D cmd IRQ without DRDY!\n");
		s->async->events |= COMEDI_CB_ERROR;
		return;
	}

	val = FUNC3(dev, s);
	FUNC0(s, &val, 1);

	/* Set up next channel. Added by abbotti 2010-01-20, but untested. */
	next_chan = s->async->cur_chan;
	if (cmd->chanlist[chan] != cmd->chanlist[next_chan])
		FUNC5(dev, cmd->chanlist[next_chan], 0);

	FUNC4(dev, s);
}
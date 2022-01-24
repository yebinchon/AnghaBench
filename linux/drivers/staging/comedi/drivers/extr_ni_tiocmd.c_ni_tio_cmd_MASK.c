#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ni_gpct {int /*<<< orphan*/  lock; TYPE_2__* counter_dev; int /*<<< orphan*/  mite_chan; } ;
struct comedi_subdevice {struct comedi_async* async; struct ni_gpct* private; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int flags; } ;
struct comedi_async {struct comedi_cmd cmd; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  class_dev; } ;

/* Variables and functions */
 int CMDF_WRITE ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct comedi_subdevice*) ; 
 int FUNC2 (struct comedi_subdevice*) ; 
 int FUNC3 (struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct comedi_device *dev, struct comedi_subdevice *s)
{
	struct ni_gpct *counter = s->private;
	struct comedi_async *async = s->async;
	struct comedi_cmd *cmd = &async->cmd;
	int retval = 0;
	unsigned long flags;

	FUNC4(&counter->lock, flags);
	if (!counter->mite_chan) {
		FUNC0(counter->counter_dev->dev->class_dev,
			"commands only supported with DMA.  ");
		FUNC0(counter->counter_dev->dev->class_dev,
			"Interrupt-driven commands not yet implemented.\n");
		retval = -EIO;
	} else {
		retval = FUNC1(s);
		if (retval == 0) {
			if (cmd->flags & CMDF_WRITE)
				retval = FUNC3(s);
			else
				retval = FUNC2(s);
		}
	}
	FUNC5(&counter->lock, flags);
	return retval;
}
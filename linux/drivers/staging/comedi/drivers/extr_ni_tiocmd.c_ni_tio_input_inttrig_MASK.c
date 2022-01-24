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
struct ni_gpct {int /*<<< orphan*/  lock; scalar_t__ mite_chan; } ;
struct comedi_subdevice {TYPE_1__* async; struct ni_gpct* private; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {unsigned int start_arg; } ;
struct TYPE_2__ {int /*<<< orphan*/ * inttrig; struct comedi_cmd cmd; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  NI_GPCT_ARM_IMMEDIATE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (struct ni_gpct*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
				struct comedi_subdevice *s,
				unsigned int trig_num)
{
	struct ni_gpct *counter = s->private;
	struct comedi_cmd *cmd = &s->async->cmd;
	unsigned long flags;
	int ret = 0;

	if (trig_num != cmd->start_arg)
		return -EINVAL;

	FUNC2(&counter->lock, flags);
	if (counter->mite_chan)
		FUNC0(counter->mite_chan);
	else
		ret = -EIO;
	FUNC3(&counter->lock, flags);
	if (ret < 0)
		return ret;
	ret = FUNC1(counter, true, NI_GPCT_ARM_IMMEDIATE);
	s->async->inttrig = NULL;

	return ret;
}
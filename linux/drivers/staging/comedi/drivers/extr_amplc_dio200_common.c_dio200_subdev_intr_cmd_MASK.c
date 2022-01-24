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
struct dio200_subdev_intr {int active; int /*<<< orphan*/  spinlock; } ;
struct comedi_subdevice {TYPE_1__* async; struct dio200_subdev_intr* private; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {scalar_t__ start_src; } ;
struct TYPE_2__ {int /*<<< orphan*/  inttrig; struct comedi_cmd cmd; } ;

/* Variables and functions */
 scalar_t__ TRIG_INT ; 
 int /*<<< orphan*/  dio200_inttrig_start_intr ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
				  struct comedi_subdevice *s)
{
	struct comedi_cmd *cmd = &s->async->cmd;
	struct dio200_subdev_intr *subpriv = s->private;
	unsigned long flags;

	FUNC1(&subpriv->spinlock, flags);

	subpriv->active = true;

	if (cmd->start_src == TRIG_INT)
		s->async->inttrig = dio200_inttrig_start_intr;
	else	/* TRIG_NOW */
		FUNC0(dev, s);

	FUNC2(&subpriv->spinlock, flags);

	return 0;
}
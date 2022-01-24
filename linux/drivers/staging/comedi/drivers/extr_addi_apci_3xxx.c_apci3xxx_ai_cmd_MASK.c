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
struct comedi_device {scalar_t__ mmio; struct apci3xxx_private* private; } ;
struct comedi_cmd {int /*<<< orphan*/ * chanlist; } ;
struct apci3xxx_private {int ai_time_base; int ai_timer; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;

/* Variables and functions */
 int FUNC0 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
			   struct comedi_subdevice *s)
{
	struct apci3xxx_private *devpriv = dev->private;
	struct comedi_cmd *cmd = &s->async->cmd;
	int ret;

	ret = FUNC0(dev, cmd->chanlist[0]);
	if (ret)
		return ret;

	/* Set the convert timing unit */
	FUNC1(devpriv->ai_time_base, dev->mmio + 36);

	/* Set the convert timing */
	FUNC1(devpriv->ai_timer, dev->mmio + 32);

	/* Start the conversion */
	FUNC1(0x180000, dev->mmio + 8);

	return 0;
}
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
struct comedi_device {scalar_t__ iobase; int /*<<< orphan*/  pacer; } ;
struct comedi_cmd {scalar_t__ scan_begin_src; int /*<<< orphan*/ * chanlist; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCL711_INT_STAT_CLR ; 
 scalar_t__ PCL711_INT_STAT_REG ; 
 int /*<<< orphan*/  PCL711_MODE_EXT_IRQ ; 
 int /*<<< orphan*/  PCL711_MODE_PACER_IRQ ; 
 scalar_t__ TRIG_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev, struct comedi_subdevice *s)
{
	struct comedi_cmd *cmd = &s->async->cmd;

	FUNC4(dev, s, cmd->chanlist[0]);

	if (cmd->scan_begin_src == TRIG_TIMER) {
		FUNC1(dev->pacer);
		FUNC0(dev->pacer, 1, 2, true);
		FUNC2(PCL711_INT_STAT_CLR, dev->iobase + PCL711_INT_STAT_REG);
		FUNC3(dev, PCL711_MODE_PACER_IRQ);
	} else {
		FUNC3(dev, PCL711_MODE_EXT_IRQ);
	}

	return 0;
}
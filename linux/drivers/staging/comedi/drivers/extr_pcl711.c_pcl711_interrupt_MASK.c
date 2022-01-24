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
struct comedi_device {scalar_t__ iobase; int /*<<< orphan*/  class_dev; int /*<<< orphan*/  attached; struct comedi_subdevice* read_subdev; } ;
struct comedi_cmd {scalar_t__ stop_src; scalar_t__ stop_arg; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {scalar_t__ scans_done; int /*<<< orphan*/  events; struct comedi_cmd cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_EOA ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  PCL711_INT_STAT_CLR ; 
 scalar_t__ PCL711_INT_STAT_REG ; 
 scalar_t__ TRIG_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned int FUNC4 (struct comedi_device*,struct comedi_subdevice*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *d)
{
	struct comedi_device *dev = d;
	struct comedi_subdevice *s = dev->read_subdev;
	struct comedi_cmd *cmd = &s->async->cmd;
	unsigned int data;

	if (!dev->attached) {
		FUNC2(dev->class_dev, "spurious interrupt\n");
		return IRQ_HANDLED;
	}

	data = FUNC4(dev, s);

	FUNC3(PCL711_INT_STAT_CLR, dev->iobase + PCL711_INT_STAT_REG);

	FUNC0(s, &data, 1);

	if (cmd->stop_src == TRIG_COUNT &&
	    s->async->scans_done >= cmd->stop_arg)
		s->async->events |= COMEDI_CB_EOA;

	FUNC1(dev, s);

	return IRQ_HANDLED;
}
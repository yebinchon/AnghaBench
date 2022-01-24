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
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {scalar_t__ iobase; int /*<<< orphan*/  attached; struct comedi_subdevice* read_subdev; } ;
struct comedi_cmd {scalar_t__ stop_src; scalar_t__ stop_arg; } ;
struct comedi_async {scalar_t__ scans_done; int /*<<< orphan*/  events; struct comedi_cmd cmd; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_EOA ; 
 int /*<<< orphan*/  COMEDI_CB_OVERFLOW ; 
 unsigned int DT2811_ADCSR_ADDONE ; 
 unsigned int DT2811_ADCSR_ADERROR ; 
 unsigned int DT2811_ADCSR_CLRERROR ; 
 scalar_t__ DT2811_ADCSR_REG ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ TRIG_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,unsigned short*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 unsigned short FUNC2 (struct comedi_device*,struct comedi_subdevice*) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *d)
{
	struct comedi_device *dev = d;
	struct comedi_subdevice *s = dev->read_subdev;
	struct comedi_async *async = s->async;
	struct comedi_cmd *cmd = &async->cmd;
	unsigned int status;

	if (!dev->attached)
		return IRQ_NONE;

	status = FUNC3(dev->iobase + DT2811_ADCSR_REG);

	if (status & DT2811_ADCSR_ADERROR) {
		async->events |= COMEDI_CB_OVERFLOW;

		FUNC4(status | DT2811_ADCSR_CLRERROR,
		     dev->iobase + DT2811_ADCSR_REG);
	}

	if (status & DT2811_ADCSR_ADDONE) {
		unsigned short val;

		val = FUNC2(dev, s);
		FUNC0(s, &val, 1);
	}

	if (cmd->stop_src == TRIG_COUNT && async->scans_done >= cmd->stop_arg)
		async->events |= COMEDI_CB_EOA;

	FUNC1(dev, s);

	return IRQ_HANDLED;
}
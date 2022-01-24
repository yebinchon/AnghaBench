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
struct pcl726_private {scalar_t__ cmd_running; } ;
struct comedi_subdevice {int /*<<< orphan*/  state; } ;
struct comedi_device {struct pcl726_private* private; struct comedi_subdevice* read_subdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *d)
{
	struct comedi_device *dev = d;
	struct comedi_subdevice *s = dev->read_subdev;
	struct pcl726_private *devpriv = dev->private;

	if (devpriv->cmd_running) {
		FUNC2(dev, s);

		FUNC0(s, &s->state, 1);
		FUNC1(dev, s);
	}

	return IRQ_HANDLED;
}
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
struct comedi_subdevice {int /*<<< orphan*/  state; } ;
struct comedi_device {scalar_t__ mmio; struct comedi_subdevice* read_subdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  NI6527_CLR_IRQS ; 
 scalar_t__ NI6527_CLR_REG ; 
 unsigned int NI6527_STATUS_EDGE ; 
 unsigned int NI6527_STATUS_IRQ ; 
 scalar_t__ NI6527_STATUS_REG ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *d)
{
	struct comedi_device *dev = d;
	struct comedi_subdevice *s = dev->read_subdev;
	unsigned int status;

	status = FUNC2(dev->mmio + NI6527_STATUS_REG);
	if (!(status & NI6527_STATUS_IRQ))
		return IRQ_NONE;

	if (status & NI6527_STATUS_EDGE) {
		FUNC0(s, &s->state, 1);
		FUNC1(dev, s);
	}

	FUNC3(NI6527_CLR_IRQS, dev->mmio + NI6527_CLR_REG);

	return IRQ_HANDLED;
}
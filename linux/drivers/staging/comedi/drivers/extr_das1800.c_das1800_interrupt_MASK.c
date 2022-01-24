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
struct comedi_device {int /*<<< orphan*/  spinlock; scalar_t__ iobase; int /*<<< orphan*/  class_dev; int /*<<< orphan*/  attached; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int CLEAR_INTR_MASK ; 
 scalar_t__ DAS1800_STATUS ; 
 unsigned int INT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *d)
{
	struct comedi_device *dev = d;
	unsigned int status;

	if (!dev->attached) {
		FUNC1(dev->class_dev, "premature interrupt\n");
		return IRQ_HANDLED;
	}

	/*
	 * Protects the indirect addressing selected by DAS1800_SELECT
	 * in das1800_ai_handler() also prevents race with das1800_ai_poll().
	 */
	FUNC4(&dev->spinlock);

	status = FUNC2(dev->iobase + DAS1800_STATUS);

	/* if interrupt was not caused by das-1800 */
	if (!(status & INT)) {
		FUNC5(&dev->spinlock);
		return IRQ_NONE;
	}
	/* clear the interrupt status bit INT */
	FUNC3(CLEAR_INTR_MASK & ~INT, dev->iobase + DAS1800_STATUS);
	/*  handle interrupt */
	FUNC0(dev);

	FUNC5(&dev->spinlock);
	return IRQ_HANDLED;
}
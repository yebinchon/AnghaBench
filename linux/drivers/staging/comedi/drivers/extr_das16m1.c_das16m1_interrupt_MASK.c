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
 scalar_t__ DAS16M1_CLR_INTR_REG ; 
 int DAS16M1_CS_IRQDATA ; 
 int DAS16M1_CS_OVRUN ; 
 scalar_t__ DAS16M1_CS_REG ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *d)
{
	int status;
	struct comedi_device *dev = d;

	if (!dev->attached) {
		FUNC1(dev->class_dev, "premature interrupt\n");
		return IRQ_HANDLED;
	}
	/*  prevent race with comedi_poll() */
	FUNC4(&dev->spinlock);

	status = FUNC2(dev->iobase + DAS16M1_CS_REG);

	if ((status & (DAS16M1_CS_IRQDATA | DAS16M1_CS_OVRUN)) == 0) {
		FUNC1(dev->class_dev, "spurious interrupt\n");
		FUNC5(&dev->spinlock);
		return IRQ_NONE;
	}

	FUNC0(dev, status);

	/* clear interrupt */
	FUNC3(0, dev->iobase + DAS16M1_CLR_INTR_REG);

	FUNC5(&dev->spinlock);
	return IRQ_HANDLED;
}
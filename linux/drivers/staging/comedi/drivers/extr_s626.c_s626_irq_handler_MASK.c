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
typedef  int u32 ;
struct comedi_device {int /*<<< orphan*/  spinlock; scalar_t__ mmio; int /*<<< orphan*/  attached; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
#define  S626_IRQ_GPIO3 129 
#define  S626_IRQ_RPS1 128 
 scalar_t__ S626_P_IER ; 
 scalar_t__ S626_P_ISR ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *d)
{
	struct comedi_device *dev = d;
	unsigned long flags;
	u32 irqtype, irqstatus;

	if (!dev->attached)
		return IRQ_NONE;
	/* lock to avoid race with comedi_poll */
	FUNC4(&dev->spinlock, flags);

	/* save interrupt enable register state */
	irqstatus = FUNC0(dev->mmio + S626_P_IER);

	/* read interrupt type */
	irqtype = FUNC0(dev->mmio + S626_P_ISR);

	/* disable master interrupt */
	FUNC6(0, dev->mmio + S626_P_IER);

	/* clear interrupt */
	FUNC6(irqtype, dev->mmio + S626_P_ISR);

	switch (irqtype) {
	case S626_IRQ_RPS1:	/* end_of_scan occurs */
		if (FUNC3(dev))
			irqstatus = 0;
		break;
	case S626_IRQ_GPIO3:	/* check dio and counter interrupt */
		/* s626_dio_clear_irq(dev); */
		FUNC2(dev);
		FUNC1(dev);
		break;
	}

	/* enable interrupt */
	FUNC6(irqstatus, dev->mmio + S626_P_IER);

	FUNC5(&dev->spinlock, flags);
	return IRQ_HANDLED;
}
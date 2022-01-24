#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tpi_info {int /*<<< orphan*/  schid; scalar_t__ intparm; } ;
struct TYPE_4__ {int /*<<< orphan*/  scsw; } ;
struct subchannel {int /*<<< orphan*/  lock; TYPE_2__* driver; TYPE_1__ schib; } ;
struct irb {int /*<<< orphan*/  scsw; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {int /*<<< orphan*/  int_code; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* irq ) (struct subchannel*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CIF_NOHZ_DELAY ; 
 int /*<<< orphan*/  IRQIO_CIO ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  cio_irb ; 
 TYPE_3__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct subchannel*) ; 
 struct irb* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct tpi_info*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,struct irb*) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dummy)
{
	struct tpi_info *tpi_info;
	struct subchannel *sch;
	struct irb *irb;

	FUNC3(CIF_NOHZ_DELAY);
	tpi_info = (struct tpi_info *) &FUNC0()->int_code;
	FUNC8(tpi_info);
	irb = FUNC7(&cio_irb);
	sch = (struct subchannel *)(unsigned long) tpi_info->intparm;
	if (!sch) {
		/* Clear pending interrupt condition. */
		FUNC1(IRQIO_CIO);
		FUNC9(tpi_info->schid, irb);
		return IRQ_HANDLED;
	}
	FUNC4(sch->lock);
	/* Store interrupt response block to lowcore. */
	if (FUNC9(tpi_info->schid, irb) == 0) {
		/* Keep subchannel information word up to date. */
		FUNC2 (&sch->schib.scsw, &irb->scsw, sizeof (irb->scsw));
		/* Call interrupt handler if there is one. */
		if (sch->driver && sch->driver->irq)
			sch->driver->irq(sch);
		else
			FUNC1(IRQIO_CIO);
	} else
		FUNC1(IRQIO_CIO);
	FUNC5(sch->lock);

	return IRQ_HANDLED;
}
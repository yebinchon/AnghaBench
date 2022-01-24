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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  head; } ;
struct imxdi_dev {int dsr; int /*<<< orphan*/  work; TYPE_1__ write_wait; scalar_t__ ioaddr; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ DIER ; 
 int DIER_CAIE ; 
 int DIER_SVIE ; 
 int DIER_WCIE ; 
 scalar_t__ DSR ; 
 int DSR_CAF ; 
 int DSR_SVF ; 
 int DSR_WCF ; 
 int DSR_WEF ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct imxdi_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct imxdi_dev*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct imxdi_dev *imxdi = dev_id;
	u32 dsr, dier;
	irqreturn_t rc = IRQ_NONE;

	dier = FUNC3(imxdi->ioaddr + DIER);
	dsr = FUNC3(imxdi->ioaddr + DSR);

	/* handle the security violation event */
	if (dier & DIER_SVIE) {
		if (dsr & DSR_SVF) {
			/*
			 * Disable the interrupt when this kind of event has
			 * happened.
			 * There cannot be more than one event of this type,
			 * because it needs a complex state change
			 * including a main power cycle to get again out of
			 * this state.
			 */
			FUNC0(imxdi, DIER_SVIE);
			/* report the violation */
			FUNC1(imxdi, dsr);
			rc = IRQ_HANDLED;
		}
	}

	/* handle write complete and write error cases */
	if (dier & DIER_WCIE) {
		/*If the write wait queue is empty then there is no pending
		  operations. It means the interrupt is for DryIce -Security.
		  IRQ must be returned as none.*/
		if (FUNC2(&imxdi->write_wait.head))
			return rc;

		/* DSR_WCF clears itself on DSR read */
		if (dsr & (DSR_WCF | DSR_WEF)) {
			/* mask the interrupt */
			FUNC0(imxdi, DIER_WCIE);

			/* save the dsr value for the wait queue */
			imxdi->dsr |= dsr;

			FUNC5(&imxdi->write_wait);
			rc = IRQ_HANDLED;
		}
	}

	/* handle the alarm case */
	if (dier & DIER_CAIE) {
		/* DSR_WCF clears itself on DSR read */
		if (dsr & DSR_CAF) {
			/* mask the interrupt */
			FUNC0(imxdi, DIER_CAIE);

			/* finish alarm in user context */
			FUNC4(&imxdi->work);
			rc = IRQ_HANDLED;
		}
	}
	return rc;
}
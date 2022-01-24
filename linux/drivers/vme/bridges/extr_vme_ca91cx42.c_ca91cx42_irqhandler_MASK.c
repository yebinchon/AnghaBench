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
struct vme_bridge {struct ca91cx42_driver* driver_priv; } ;
struct ca91cx42_driver {scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int CA91CX42_LINT_DMA ; 
 int CA91CX42_LINT_LERR ; 
 int CA91CX42_LINT_LM0 ; 
 int CA91CX42_LINT_LM1 ; 
 int CA91CX42_LINT_LM2 ; 
 int CA91CX42_LINT_LM3 ; 
 int CA91CX42_LINT_MBOX ; 
 int CA91CX42_LINT_SW_IACK ; 
 int CA91CX42_LINT_VERR ; 
 int CA91CX42_LINT_VIRQ1 ; 
 int CA91CX42_LINT_VIRQ2 ; 
 int CA91CX42_LINT_VIRQ3 ; 
 int CA91CX42_LINT_VIRQ4 ; 
 int CA91CX42_LINT_VIRQ5 ; 
 int CA91CX42_LINT_VIRQ6 ; 
 int CA91CX42_LINT_VIRQ7 ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ LINT_EN ; 
 scalar_t__ LINT_STAT ; 
 int FUNC0 (struct ca91cx42_driver*) ; 
 int FUNC1 (struct ca91cx42_driver*) ; 
 int FUNC2 (struct vme_bridge*) ; 
 int FUNC3 (struct ca91cx42_driver*,int) ; 
 int FUNC4 (struct ca91cx42_driver*,int) ; 
 int FUNC5 (struct vme_bridge*) ; 
 int FUNC6 (struct vme_bridge*,int) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *ptr)
{
	u32 stat, enable, serviced = 0;
	struct vme_bridge *ca91cx42_bridge;
	struct ca91cx42_driver *bridge;

	ca91cx42_bridge = ptr;

	bridge = ca91cx42_bridge->driver_priv;

	enable = FUNC7(bridge->base + LINT_EN);
	stat = FUNC7(bridge->base + LINT_STAT);

	/* Only look at unmasked interrupts */
	stat &= enable;

	if (FUNC9(!stat))
		return IRQ_NONE;

	if (stat & CA91CX42_LINT_DMA)
		serviced |= FUNC0(bridge);
	if (stat & (CA91CX42_LINT_LM0 | CA91CX42_LINT_LM1 | CA91CX42_LINT_LM2 |
			CA91CX42_LINT_LM3))
		serviced |= FUNC3(bridge, stat);
	if (stat & CA91CX42_LINT_MBOX)
		serviced |= FUNC4(bridge, stat);
	if (stat & CA91CX42_LINT_SW_IACK)
		serviced |= FUNC1(bridge);
	if (stat & CA91CX42_LINT_VERR)
		serviced |= FUNC5(ca91cx42_bridge);
	if (stat & CA91CX42_LINT_LERR)
		serviced |= FUNC2(ca91cx42_bridge);
	if (stat & (CA91CX42_LINT_VIRQ1 | CA91CX42_LINT_VIRQ2 |
			CA91CX42_LINT_VIRQ3 | CA91CX42_LINT_VIRQ4 |
			CA91CX42_LINT_VIRQ5 | CA91CX42_LINT_VIRQ6 |
			CA91CX42_LINT_VIRQ7))
		serviced |= FUNC6(ca91cx42_bridge, stat);

	/* Clear serviced interrupts */
	FUNC8(serviced, bridge->base + LINT_STAT);

	return IRQ_HANDLED;
}
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
struct rcar_msi {int /*<<< orphan*/  used; int /*<<< orphan*/  domain; } ;
struct rcar_pcie {struct device* dev; struct rcar_msi msi; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  PCIEMSIFR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 unsigned int FUNC2 (unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned long FUNC5 (struct rcar_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rcar_pcie*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *data)
{
	struct rcar_pcie *pcie = data;
	struct rcar_msi *msi = &pcie->msi;
	struct device *dev = pcie->dev;
	unsigned long reg;

	reg = FUNC5(pcie, PCIEMSIFR);

	/* MSI & INTx share an interrupt - we only handle MSI here */
	if (!reg)
		return IRQ_NONE;

	while (reg) {
		unsigned int index = FUNC2(&reg, 32);
		unsigned int msi_irq;

		/* clear the interrupt */
		FUNC6(pcie, 1 << index, PCIEMSIFR);

		msi_irq = FUNC4(msi->domain, index);
		if (msi_irq) {
			if (FUNC7(index, msi->used))
				FUNC3(msi_irq);
			else
				FUNC1(dev, "unhandled MSI\n");
		} else {
			/* Unknown MSI, just clear it */
			FUNC0(dev, "unexpected MSI\n");
		}

		/* see if there's any more pending in this vector */
		reg = FUNC5(pcie, PCIEMSIFR);
	}

	return IRQ_HANDLED;
}
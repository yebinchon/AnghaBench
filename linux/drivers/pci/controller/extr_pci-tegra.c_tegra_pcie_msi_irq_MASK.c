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
struct tegra_msi {int /*<<< orphan*/  used; int /*<<< orphan*/  domain; } ;
struct tegra_pcie {struct tegra_msi msi; struct device* dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ AFI_MSI_VEC0 ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned long FUNC0 (struct tegra_pcie*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_pcie*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 unsigned int FUNC3 (unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *data)
{
	struct tegra_pcie *pcie = data;
	struct device *dev = pcie->dev;
	struct tegra_msi *msi = &pcie->msi;
	unsigned int i, processed = 0;

	for (i = 0; i < 8; i++) {
		unsigned long reg = FUNC0(pcie, AFI_MSI_VEC0 + i * 4);

		while (reg) {
			unsigned int offset = FUNC3(&reg, 32);
			unsigned int index = i * 32 + offset;
			unsigned int irq;

			/* clear the interrupt */
			FUNC1(pcie, 1 << offset, AFI_MSI_VEC0 + i * 4);

			irq = FUNC5(msi->domain, index);
			if (irq) {
				if (FUNC6(index, msi->used))
					FUNC4(irq);
				else
					FUNC2(dev, "unhandled MSI\n");
			} else {
				/*
				 * that's weird who triggered this?
				 * just clear it
				 */
				FUNC2(dev, "unexpected MSI\n");
			}

			/* see if there's any more pending in this vector */
			reg = FUNC0(pcie, AFI_MSI_VEC0 + i * 4);

			processed++;
		}
	}

	return processed > 0 ? IRQ_HANDLED : IRQ_NONE;
}
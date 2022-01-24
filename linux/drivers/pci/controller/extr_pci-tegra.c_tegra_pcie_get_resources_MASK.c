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
struct tegra_pcie_soc {scalar_t__ program_uphy; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct tegra_pcie {int irq; void* cfg; struct resource cs; void* afi; void* pads; struct tegra_pcie_soc* soc; struct device* dev; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 scalar_t__ SZ_4K ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 void* FUNC3 (struct device*,struct resource*) ; 
 int FUNC4 (struct platform_device*,char*) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct tegra_pcie*) ; 
 int FUNC7 (struct tegra_pcie*) ; 
 int /*<<< orphan*/  tegra_pcie_isr ; 
 int FUNC8 (struct tegra_pcie*) ; 
 int /*<<< orphan*/  FUNC9 (struct tegra_pcie*) ; 
 int FUNC10 (struct tegra_pcie*) ; 
 struct platform_device* FUNC11 (struct device*) ; 

__attribute__((used)) static int FUNC12(struct tegra_pcie *pcie)
{
	struct device *dev = pcie->dev;
	struct platform_device *pdev = FUNC11(dev);
	struct resource *pads, *afi, *res;
	const struct tegra_pcie_soc *soc = pcie->soc;
	int err;

	err = FUNC7(pcie);
	if (err) {
		FUNC2(dev, "failed to get clocks: %d\n", err);
		return err;
	}

	err = FUNC10(pcie);
	if (err) {
		FUNC2(dev, "failed to get resets: %d\n", err);
		return err;
	}

	if (soc->program_uphy) {
		err = FUNC8(pcie);
		if (err < 0) {
			FUNC2(dev, "failed to get PHYs: %d\n", err);
			return err;
		}
	}

	pads = FUNC5(pdev, IORESOURCE_MEM, "pads");
	pcie->pads = FUNC3(dev, pads);
	if (FUNC0(pcie->pads)) {
		err = FUNC1(pcie->pads);
		goto phys_put;
	}

	afi = FUNC5(pdev, IORESOURCE_MEM, "afi");
	pcie->afi = FUNC3(dev, afi);
	if (FUNC0(pcie->afi)) {
		err = FUNC1(pcie->afi);
		goto phys_put;
	}

	/* request configuration space, but remap later, on demand */
	res = FUNC5(pdev, IORESOURCE_MEM, "cs");
	if (!res) {
		err = -EADDRNOTAVAIL;
		goto phys_put;
	}

	pcie->cs = *res;

	/* constrain configuration space to 4 KiB */
	pcie->cs.end = pcie->cs.start + SZ_4K - 1;

	pcie->cfg = FUNC3(dev, &pcie->cs);
	if (FUNC0(pcie->cfg)) {
		err = FUNC1(pcie->cfg);
		goto phys_put;
	}

	/* request interrupt */
	err = FUNC4(pdev, "intr");
	if (err < 0) {
		FUNC2(dev, "failed to get IRQ: %d\n", err);
		goto phys_put;
	}

	pcie->irq = err;

	err = FUNC6(pcie->irq, tegra_pcie_isr, IRQF_SHARED, "PCIE", pcie);
	if (err) {
		FUNC2(dev, "failed to register IRQ: %d\n", err);
		goto phys_put;
	}

	return 0;

phys_put:
	if (soc->program_uphy)
		FUNC9(pcie);
	return err;
}
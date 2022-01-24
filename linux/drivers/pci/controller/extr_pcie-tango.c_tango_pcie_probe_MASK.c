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
struct tango_pcie {int /*<<< orphan*/  used_msi_lock; struct irq_domain* dom; scalar_t__ base; scalar_t__ msi_doorbell; } ;
struct resource {scalar_t__ start; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct of_pci_range_parser {int dummy; } ;
struct of_pci_range {scalar_t__ pci_addr; scalar_t__ size; } ;
struct irq_domain {int dummy; } ;
struct fwnode_handle {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  LOCKDEP_STILL_OK ; 
 int MSI_MAX ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ SMP8759_DOORBELL ; 
 scalar_t__ SMP8759_ENABLE ; 
 int /*<<< orphan*/  TAINT_CRAP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 scalar_t__ FUNC5 (struct device*,struct resource*) ; 
 struct tango_pcie* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dom_ops ; 
 struct irq_domain* FUNC7 (struct fwnode_handle*,int,int /*<<< orphan*/ *,struct tango_pcie*) ; 
 int /*<<< orphan*/  FUNC8 (struct irq_domain*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,struct tango_pcie*) ; 
 int /*<<< orphan*/  msi_dom_info ; 
 struct fwnode_handle* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct of_pci_range_parser*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (struct of_pci_range_parser*,struct of_pci_range*) ; 
 int FUNC13 (struct platform_device*,int /*<<< orphan*/ *) ; 
 struct irq_domain* FUNC14 (struct fwnode_handle*,int /*<<< orphan*/ *,struct irq_domain*) ; 
 int FUNC15 (struct platform_device*,int) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct tango_pcie*) ; 
 int /*<<< orphan*/  smp8759_ecam_ops ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tango_msi_isr ; 
 int /*<<< orphan*/  FUNC19 (struct tango_pcie*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct tango_pcie *pcie;
	struct resource *res;
	struct fwnode_handle *fwnode = FUNC10(dev->of_node);
	struct irq_domain *msi_dom, *irq_dom;
	struct of_pci_range_parser parser;
	struct of_pci_range range;
	int virq, offset;

	FUNC4(dev, "simultaneous PCI config and MMIO accesses may cause data corruption\n");
	FUNC2(TAINT_CRAP, LOCKDEP_STILL_OK);

	pcie = FUNC6(dev, sizeof(*pcie), GFP_KERNEL);
	if (!pcie)
		return -ENOMEM;

	res = FUNC16(pdev, IORESOURCE_MEM, 1);
	pcie->base = FUNC5(dev, res);
	if (FUNC0(pcie->base))
		return FUNC1(pcie->base);

	FUNC17(pdev, pcie);

	if (!FUNC19(pcie))
		return -ENODEV;

	if (FUNC11(&parser, dev->of_node) < 0)
		return -ENOENT;

	if (FUNC12(&parser, &range) == NULL)
		return -ENOENT;

	range.pci_addr += range.size;
	pcie->msi_doorbell = range.pci_addr + res->start + SMP8759_DOORBELL;

	for (offset = 0; offset < MSI_MAX / 8; offset += 4)
		FUNC20(0, pcie->base + SMP8759_ENABLE + offset);

	virq = FUNC15(pdev, 1);
	if (virq <= 0) {
		FUNC3(dev, "Failed to map IRQ\n");
		return -ENXIO;
	}

	irq_dom = FUNC7(fwnode, MSI_MAX, &dom_ops, pcie);
	if (!irq_dom) {
		FUNC3(dev, "Failed to create IRQ domain\n");
		return -ENOMEM;
	}

	msi_dom = FUNC14(fwnode, &msi_dom_info, irq_dom);
	if (!msi_dom) {
		FUNC3(dev, "Failed to create MSI domain\n");
		FUNC8(irq_dom);
		return -ENOMEM;
	}

	pcie->dom = irq_dom;
	FUNC18(&pcie->used_msi_lock);
	FUNC9(virq, tango_msi_isr, pcie);

	return FUNC13(pdev, &smp8759_ecam_ops);
}
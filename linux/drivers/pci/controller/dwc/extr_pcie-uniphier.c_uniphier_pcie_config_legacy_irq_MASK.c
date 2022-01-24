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
struct uniphier_pcie_priv {int /*<<< orphan*/  legacy_irq_domain; } ;
struct pcie_port {int /*<<< orphan*/  irq; } ;
struct dw_pcie {TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  PCI_NUM_INTX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pcie_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pcie_port*) ; 
 struct device_node* FUNC4 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 struct dw_pcie* FUNC6 (struct pcie_port*) ; 
 struct uniphier_pcie_priv* FUNC7 (struct dw_pcie*) ; 
 int /*<<< orphan*/  uniphier_intx_domain_ops ; 
 int /*<<< orphan*/  uniphier_pcie_irq_handler ; 

__attribute__((used)) static int FUNC8(struct pcie_port *pp)
{
	struct dw_pcie *pci = FUNC6(pp);
	struct uniphier_pcie_priv *priv = FUNC7(pci);
	struct device_node *np = pci->dev->of_node;
	struct device_node *np_intc;
	int ret = 0;

	np_intc = FUNC4(np, "legacy-interrupt-controller");
	if (!np_intc) {
		FUNC0(pci->dev, "Failed to get legacy-interrupt-controller node\n");
		return -EINVAL;
	}

	pp->irq = FUNC2(np_intc, 0);
	if (!pp->irq) {
		FUNC0(pci->dev, "Failed to get an IRQ entry in legacy-interrupt-controller\n");
		ret = -EINVAL;
		goto out_put_node;
	}

	priv->legacy_irq_domain = FUNC1(np_intc, PCI_NUM_INTX,
						&uniphier_intx_domain_ops, pp);
	if (!priv->legacy_irq_domain) {
		FUNC0(pci->dev, "Failed to get INTx domain\n");
		ret = -ENODEV;
		goto out_put_node;
	}

	FUNC3(pp->irq, uniphier_pcie_irq_handler,
					 pp);

out_put_node:
	FUNC5(np_intc);
	return ret;
}
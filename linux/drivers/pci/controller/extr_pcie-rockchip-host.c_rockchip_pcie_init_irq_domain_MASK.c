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
struct rockchip_pcie {int /*<<< orphan*/  irq_domain; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PCI_NUM_INTX ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  intx_domain_ops ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct rockchip_pcie*) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 

__attribute__((used)) static int FUNC4(struct rockchip_pcie *rockchip)
{
	struct device *dev = rockchip->dev;
	struct device_node *intc = FUNC2(dev->of_node, NULL);

	if (!intc) {
		FUNC0(dev, "missing child interrupt-controller node\n");
		return -EINVAL;
	}

	rockchip->irq_domain = FUNC1(intc, PCI_NUM_INTX,
						    &intx_domain_ops, rockchip);
	FUNC3(intc);
	if (!rockchip->irq_domain) {
		FUNC0(dev, "failed to get a INTx IRQ domain\n");
		return -EINVAL;
	}

	return 0;
}
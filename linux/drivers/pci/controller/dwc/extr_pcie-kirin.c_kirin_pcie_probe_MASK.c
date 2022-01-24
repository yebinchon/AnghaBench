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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct kirin_pcie {scalar_t__ gpio_id_reset; struct dw_pcie* pci; } ;
struct dw_pcie {int /*<<< orphan*/ * ops; struct device* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 void* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dw_pcie*,struct platform_device*) ; 
 int /*<<< orphan*/  kirin_dw_pcie_ops ; 
 int FUNC3 (struct kirin_pcie*,struct platform_device*) ; 
 int FUNC4 (struct kirin_pcie*,struct platform_device*) ; 
 int FUNC5 (struct kirin_pcie*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct kirin_pcie*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct kirin_pcie *kirin_pcie;
	struct dw_pcie *pci;
	int ret;

	if (!dev->of_node) {
		FUNC0(dev, "NULL node\n");
		return -EINVAL;
	}

	kirin_pcie = FUNC1(dev, sizeof(struct kirin_pcie), GFP_KERNEL);
	if (!kirin_pcie)
		return -ENOMEM;

	pci = FUNC1(dev, sizeof(*pci), GFP_KERNEL);
	if (!pci)
		return -ENOMEM;

	pci->dev = dev;
	pci->ops = &kirin_dw_pcie_ops;
	kirin_pcie->pci = pci;

	ret = FUNC3(kirin_pcie, pdev);
	if (ret)
		return ret;

	ret = FUNC4(kirin_pcie, pdev);
	if (ret)
		return ret;

	kirin_pcie->gpio_id_reset = FUNC6(dev->of_node,
						      "reset-gpios", 0);
	if (kirin_pcie->gpio_id_reset < 0)
		return -ENODEV;

	ret = FUNC5(kirin_pcie);
	if (ret)
		return ret;

	FUNC7(pdev, kirin_pcie);

	return FUNC2(pci, pdev);
}
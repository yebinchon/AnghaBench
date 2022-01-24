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
struct rockchip_pcie {struct device* dev; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct rockchip_pcie*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct rockchip_pcie*) ; 
 int FUNC3 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  rockchip_pcie_client_irq_handler ; 
 int /*<<< orphan*/  rockchip_pcie_legacy_int_handler ; 
 int /*<<< orphan*/  rockchip_pcie_subsys_irq_handler ; 
 struct platform_device* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct rockchip_pcie *rockchip)
{
	int irq, err;
	struct device *dev = rockchip->dev;
	struct platform_device *pdev = FUNC4(dev);

	irq = FUNC3(pdev, "sys");
	if (irq < 0) {
		FUNC0(dev, "missing sys IRQ resource\n");
		return irq;
	}

	err = FUNC1(dev, irq, rockchip_pcie_subsys_irq_handler,
			       IRQF_SHARED, "pcie-sys", rockchip);
	if (err) {
		FUNC0(dev, "failed to request PCIe subsystem IRQ\n");
		return err;
	}

	irq = FUNC3(pdev, "legacy");
	if (irq < 0) {
		FUNC0(dev, "missing legacy IRQ resource\n");
		return irq;
	}

	FUNC2(irq,
					 rockchip_pcie_legacy_int_handler,
					 rockchip);

	irq = FUNC3(pdev, "client");
	if (irq < 0) {
		FUNC0(dev, "missing client IRQ resource\n");
		return irq;
	}

	err = FUNC1(dev, irq, rockchip_pcie_client_irq_handler,
			       IRQF_SHARED, "pcie-client", rockchip);
	if (err) {
		FUNC0(dev, "failed to request PCIe client IRQ\n");
		return err;
	}

	return 0;
}
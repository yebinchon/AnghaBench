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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct dw_pcie {int /*<<< orphan*/ * ops; struct device* dev; } ;
struct meson_pcie {int /*<<< orphan*/  reset_gpio; struct dw_pcie pci; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct meson_pcie* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dw_pcie_ops ; 
 int FUNC5 (struct meson_pcie*,struct platform_device*) ; 
 int FUNC6 (struct platform_device*,struct meson_pcie*) ; 
 int FUNC7 (struct meson_pcie*) ; 
 int /*<<< orphan*/  FUNC8 (struct meson_pcie*) ; 
 int FUNC9 (struct meson_pcie*) ; 
 int /*<<< orphan*/  FUNC10 (struct meson_pcie*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct meson_pcie*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct dw_pcie *pci;
	struct meson_pcie *mp;
	int ret;

	mp = FUNC4(dev, sizeof(*mp), GFP_KERNEL);
	if (!mp)
		return -ENOMEM;

	pci = &mp->pci;
	pci->dev = dev;
	pci->ops = &dw_pcie_ops;

	mp->reset_gpio = FUNC3(dev, "reset", GPIOD_OUT_LOW);
	if (FUNC0(mp->reset_gpio)) {
		FUNC2(dev, "get reset gpio failed\n");
		return FUNC1(mp->reset_gpio);
	}

	ret = FUNC7(mp);
	if (ret) {
		FUNC2(dev, "get reset resource failed, %d\n", ret);
		return ret;
	}

	ret = FUNC6(pdev, mp);
	if (ret) {
		FUNC2(dev, "get memory resource failed, %d\n", ret);
		return ret;
	}

	FUNC8(mp);
	FUNC10(mp);

	ret = FUNC9(mp);
	if (ret) {
		FUNC2(dev, "init clock resources failed, %d\n", ret);
		return ret;
	}

	FUNC11(pdev, mp);

	ret = FUNC5(mp, pdev);
	if (ret < 0) {
		FUNC2(dev, "Add PCIe port failed, %d\n", ret);
		return ret;
	}

	return 0;
}
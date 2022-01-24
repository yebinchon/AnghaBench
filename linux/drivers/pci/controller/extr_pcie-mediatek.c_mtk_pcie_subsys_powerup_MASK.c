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
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct mtk_pcie {int /*<<< orphan*/ * free_ck; int /*<<< orphan*/ * base; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (struct device*,struct resource*) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 struct platform_device* FUNC11 (struct device*) ; 

__attribute__((used)) static int FUNC12(struct mtk_pcie *pcie)
{
	struct device *dev = pcie->dev;
	struct platform_device *pdev = FUNC11(dev);
	struct resource *regs;
	int err;

	/* get shared registers, which are optional */
	regs = FUNC6(pdev, IORESOURCE_MEM, "subsys");
	if (regs) {
		pcie->base = FUNC5(dev, regs);
		if (FUNC0(pcie->base)) {
			FUNC3(dev, "failed to map shared register\n");
			return FUNC1(pcie->base);
		}
	}

	pcie->free_ck = FUNC4(dev, "free_ck");
	if (FUNC0(pcie->free_ck)) {
		if (FUNC1(pcie->free_ck) == -EPROBE_DEFER)
			return -EPROBE_DEFER;

		pcie->free_ck = NULL;
	}

	FUNC8(dev);
	FUNC9(dev);

	/* enable top level clock */
	err = FUNC2(pcie->free_ck);
	if (err) {
		FUNC3(dev, "failed to enable free_ck\n");
		goto err_free_ck;
	}

	return 0;

err_free_ck:
	FUNC10(dev);
	FUNC7(dev);

	return err;
}
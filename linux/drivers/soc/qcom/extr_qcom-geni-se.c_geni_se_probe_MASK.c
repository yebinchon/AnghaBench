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
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct geni_wrapper {TYPE_1__* ahb_clks; int /*<<< orphan*/  base; struct device* dev; } ;
struct TYPE_2__ {char* id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NUM_AHB_CLKS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct geni_wrapper*) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct resource*) ; 
 struct geni_wrapper* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct resource *res;
	struct geni_wrapper *wrapper;
	int ret;

	wrapper = FUNC7(dev, sizeof(*wrapper), GFP_KERNEL);
	if (!wrapper)
		return -ENOMEM;

	wrapper->dev = dev;
	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	wrapper->base = FUNC6(dev, res);
	if (FUNC0(wrapper->base))
		return FUNC1(wrapper->base);

	if (!FUNC9(&pdev->dev)) {
		wrapper->ahb_clks[0].id = "m-ahb";
		wrapper->ahb_clks[1].id = "s-ahb";
		ret = FUNC5(dev, NUM_AHB_CLKS, wrapper->ahb_clks);
		if (ret) {
			FUNC3(dev, "Err getting AHB clks %d\n", ret);
			return ret;
		}
	}

	FUNC4(dev, wrapper);
	FUNC2(dev, "GENI SE Driver probed\n");
	return FUNC8(dev);
}
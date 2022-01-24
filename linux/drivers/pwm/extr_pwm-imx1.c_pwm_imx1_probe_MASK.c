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
struct TYPE_2__ {int base; int npwm; int /*<<< orphan*/ * dev; int /*<<< orphan*/ * ops; } ;
struct pwm_imx1_chip {TYPE_1__ chip; void* mmio_base; void* clk_per; void* clk_ipg; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 struct pwm_imx1_chip* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct pwm_imx1_chip*) ; 
 int /*<<< orphan*/  pwm_imx1_ops ; 
 int FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct pwm_imx1_chip *imx;
	struct resource *r;

	imx = FUNC5(&pdev->dev, sizeof(*imx), GFP_KERNEL);
	if (!imx)
		return -ENOMEM;

	FUNC7(pdev, imx);

	imx->clk_ipg = FUNC3(&pdev->dev, "ipg");
	if (FUNC0(imx->clk_ipg)) {
		FUNC2(&pdev->dev, "getting ipg clock failed with %ld\n",
				FUNC1(imx->clk_ipg));
		return FUNC1(imx->clk_ipg);
	}

	imx->clk_per = FUNC3(&pdev->dev, "per");
	if (FUNC0(imx->clk_per)) {
		int ret = FUNC1(imx->clk_per);

		if (ret != -EPROBE_DEFER)
			FUNC2(&pdev->dev,
				"failed to get peripheral clock: %d\n",
				ret);

		return ret;
	}

	imx->chip.ops = &pwm_imx1_ops;
	imx->chip.dev = &pdev->dev;
	imx->chip.base = -1;
	imx->chip.npwm = 1;

	r = FUNC6(pdev, IORESOURCE_MEM, 0);
	imx->mmio_base = FUNC4(&pdev->dev, r);
	if (FUNC0(imx->mmio_base))
		return FUNC1(imx->mmio_base);

	return FUNC8(&imx->chip);
}
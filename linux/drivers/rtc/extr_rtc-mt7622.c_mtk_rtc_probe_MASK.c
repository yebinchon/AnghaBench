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
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct mtk_rtc {int irq; int /*<<< orphan*/  clk; int /*<<< orphan*/  rtc; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct resource*) ; 
 struct mtk_rtc* FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mtk_rtc*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mtk_rtc_alarmirq ; 
 int /*<<< orphan*/  FUNC12 (struct mtk_rtc*) ; 
 int /*<<< orphan*/  mtk_rtc_ops ; 
 int FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct mtk_rtc*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct mtk_rtc *hw;
	struct resource *res;
	int ret;

	hw = FUNC9(&pdev->dev, sizeof(*hw), GFP_KERNEL);
	if (!hw)
		return -ENOMEM;

	FUNC15(pdev, hw);

	res = FUNC14(pdev, IORESOURCE_MEM, 0);
	hw->base = FUNC8(&pdev->dev, res);
	if (FUNC0(hw->base))
		return FUNC1(hw->base);

	hw->clk = FUNC7(&pdev->dev, "rtc");
	if (FUNC0(hw->clk)) {
		FUNC4(&pdev->dev, "No clock\n");
		return FUNC1(hw->clk);
	}

	ret = FUNC3(hw->clk);
	if (ret)
		return ret;

	hw->irq = FUNC13(pdev, 0);
	if (hw->irq < 0) {
		ret = hw->irq;
		goto err;
	}

	ret = FUNC10(&pdev->dev, hw->irq, mtk_rtc_alarmirq,
			       0, FUNC5(&pdev->dev), hw);
	if (ret) {
		FUNC4(&pdev->dev, "Can't request IRQ\n");
		goto err;
	}

	FUNC12(hw);

	FUNC6(&pdev->dev, true);

	hw->rtc = FUNC11(&pdev->dev, pdev->name,
					   &mtk_rtc_ops, THIS_MODULE);
	if (FUNC0(hw->rtc)) {
		ret = FUNC1(hw->rtc);
		FUNC4(&pdev->dev, "Unable to register device\n");
		goto err;
	}

	return 0;
err:
	FUNC2(hw->clk);

	return ret;
}
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
struct lpc24xx_rtc {void* clk_rtc; void* clk_reg; void* rtc; void* rtc_base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int LPC178X_CCALEN ; 
 int /*<<< orphan*/  LPC24XX_CCR ; 
 int LPC24XX_CLKEN ; 
 int /*<<< orphan*/  LPC24XX_ILR ; 
 int LPC24XX_RTCALF ; 
 int LPC24XX_RTCCIF ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC7 (int /*<<< orphan*/ *,struct resource*) ; 
 struct lpc24xx_rtc* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lpc24xx_rtc*) ; 
 void* FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpc24xx_rtc_interrupt ; 
 int /*<<< orphan*/  lpc24xx_rtc_ops ; 
 int FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct lpc24xx_rtc*) ; 
 int /*<<< orphan*/  FUNC14 (struct lpc24xx_rtc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct lpc24xx_rtc *rtc;
	struct resource *res;
	int irq, ret;

	rtc = FUNC8(&pdev->dev, sizeof(*rtc), GFP_KERNEL);
	if (!rtc)
		return -ENOMEM;

	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	rtc->rtc_base = FUNC7(&pdev->dev, res);
	if (FUNC0(rtc->rtc_base))
		return FUNC1(rtc->rtc_base);

	irq = FUNC11(pdev, 0);
	if (irq < 0) {
		FUNC5(&pdev->dev, "can't get interrupt resource\n");
		return irq;
	}

	rtc->clk_rtc = FUNC6(&pdev->dev, "rtc");
	if (FUNC0(rtc->clk_rtc)) {
		FUNC4(&pdev->dev, "error getting rtc clock\n");
		return FUNC1(rtc->clk_rtc);
	}

	rtc->clk_reg = FUNC6(&pdev->dev, "reg");
	if (FUNC0(rtc->clk_reg)) {
		FUNC4(&pdev->dev, "error getting reg clock\n");
		return FUNC1(rtc->clk_reg);
	}

	ret = FUNC3(rtc->clk_rtc);
	if (ret) {
		FUNC4(&pdev->dev, "unable to enable rtc clock\n");
		return ret;
	}

	ret = FUNC3(rtc->clk_reg);
	if (ret) {
		FUNC4(&pdev->dev, "unable to enable reg clock\n");
		goto disable_rtc_clk;
	}

	FUNC13(pdev, rtc);

	/* Clear any pending interrupts */
	FUNC14(rtc, LPC24XX_ILR, LPC24XX_RTCCIF | LPC24XX_RTCALF);

	/* Enable RTC count */
	FUNC14(rtc, LPC24XX_CCR, LPC24XX_CLKEN | LPC178X_CCALEN);

	ret = FUNC9(&pdev->dev, irq, lpc24xx_rtc_interrupt, 0,
			       pdev->name, rtc);
	if (ret < 0) {
		FUNC5(&pdev->dev, "can't request interrupt\n");
		goto disable_clks;
	}

	rtc->rtc = FUNC10(&pdev->dev, "lpc24xx-rtc",
					    &lpc24xx_rtc_ops, THIS_MODULE);
	if (FUNC0(rtc->rtc)) {
		FUNC4(&pdev->dev, "can't register rtc device\n");
		ret = FUNC1(rtc->rtc);
		goto disable_clks;
	}

	return 0;

disable_clks:
	FUNC2(rtc->clk_reg);
disable_rtc_clk:
	FUNC2(rtc->clk_rtc);
	return ret;
}
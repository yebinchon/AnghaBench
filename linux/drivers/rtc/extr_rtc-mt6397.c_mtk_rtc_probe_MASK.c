#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_10__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct mt6397_rtc {scalar_t__ irq; TYPE_1__* rtc_dev; TYPE_3__* dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; int /*<<< orphan*/  addr_base; } ;
struct mt6397_chip {int /*<<< orphan*/  regmap; } ;
struct TYPE_9__ {int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_HIGH ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,int,int) ; 
 struct mt6397_chip* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 struct mt6397_rtc* FUNC5 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int,struct mt6397_rtc*) ; 
 int /*<<< orphan*/  mtk_rtc_irq_handler_thread ; 
 int /*<<< orphan*/  mtk_rtc_ops ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct mt6397_rtc*) ; 
 int FUNC12 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct mt6397_rtc*) ; 
 int FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct resource *res;
	struct mt6397_chip *mt6397_chip = FUNC3(pdev->dev.parent);
	struct mt6397_rtc *rtc;
	int ret;

	rtc = FUNC5(&pdev->dev, sizeof(struct mt6397_rtc), GFP_KERNEL);
	if (!rtc)
		return -ENOMEM;

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	rtc->addr_base = res->start;

	rtc->irq = FUNC9(pdev, 0);
	if (rtc->irq < 0)
		return rtc->irq;

	rtc->regmap = mt6397_chip->regmap;
	rtc->dev = &pdev->dev;
	FUNC8(&rtc->lock);

	FUNC11(pdev, rtc);

	rtc->rtc_dev = FUNC6(rtc->dev);
	if (FUNC0(rtc->rtc_dev))
		return FUNC1(rtc->rtc_dev);

	ret = FUNC12(rtc->irq, NULL,
				   mtk_rtc_irq_handler_thread,
				   IRQF_ONESHOT | IRQF_TRIGGER_HIGH,
				   "mt6397-rtc", rtc);
	if (ret) {
		FUNC2(&pdev->dev, "Failed to request alarm IRQ: %d: %d\n",
			rtc->irq, ret);
		return ret;
	}

	FUNC4(&pdev->dev, 1);

	rtc->rtc_dev->ops = &mtk_rtc_ops;

	ret = FUNC13(rtc->rtc_dev);
	if (ret)
		goto out_free_irq;

	return 0;

out_free_irq:
	FUNC7(rtc->irq, rtc);
	return ret;
}
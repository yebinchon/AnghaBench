#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct spear_rtc_config {TYPE_1__* clk; TYPE_1__* rtc; int /*<<< orphan*/  lock; TYPE_1__* ioaddr; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {int uie_unsupported; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,struct resource*) ; 
 struct spear_rtc_config* FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct spear_rtc_config*) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct spear_rtc_config*) ; 
 int /*<<< orphan*/  spear_rtc_irq ; 
 int /*<<< orphan*/  spear_rtc_ops ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct resource *res;
	struct spear_rtc_config *config;
	int status = 0;
	int irq;

	config = FUNC9(&pdev->dev, sizeof(*config), GFP_KERNEL);
	if (!config)
		return -ENOMEM;

	/* alarm irqs */
	irq = FUNC12(pdev, 0);
	if (irq < 0)
		return irq;

	status = FUNC10(&pdev->dev, irq, spear_rtc_irq, 0, pdev->name,
			config);
	if (status) {
		FUNC4(&pdev->dev, "Alarm interrupt IRQ%d already claimed\n",
				irq);
		return status;
	}

	res = FUNC13(pdev, IORESOURCE_MEM, 0);
	config->ioaddr = FUNC8(&pdev->dev, res);
	if (FUNC0(config->ioaddr))
		return FUNC1(config->ioaddr);

	config->clk = FUNC7(&pdev->dev, NULL);
	if (FUNC0(config->clk))
		return FUNC1(config->clk);

	status = FUNC3(config->clk);
	if (status < 0)
		return status;

	FUNC15(&config->lock);
	FUNC14(pdev, config);

	config->rtc = FUNC11(&pdev->dev, pdev->name,
					&spear_rtc_ops, THIS_MODULE);
	if (FUNC0(config->rtc)) {
		FUNC4(&pdev->dev, "can't register RTC device, err %ld\n",
				FUNC1(config->rtc));
		status = FUNC1(config->rtc);
		goto err_disable_clock;
	}

	config->rtc->uie_unsupported = 1;

	if (!FUNC5(&pdev->dev))
		FUNC6(&pdev->dev, 1);

	return 0;

err_disable_clock:
	FUNC2(config->clk);

	return status;
}
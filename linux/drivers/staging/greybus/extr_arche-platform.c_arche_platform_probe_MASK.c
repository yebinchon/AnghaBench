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
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  notifier_call; } ;
struct arche_platform_drvdata {int /*<<< orphan*/  platform_state_mutex; TYPE_1__ pm_notifier; int /*<<< orphan*/  wake_detect_irq; void* wake_detect; int /*<<< orphan*/  wake_lock; struct device* dev; int /*<<< orphan*/  num_apbs; void* svc_ref_clk; void* svc_refclk_req; void* svc_sysboot; void* svc_reset; scalar_t__ is_reset_act_hi; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHE_PLATFORM_STATE_OFF ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int GPIOD_IN ; 
 unsigned int GPIOD_OUT_HIGH ; 
 unsigned int GPIOD_OUT_LOW ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  WD_STATE_IDLE ; 
 int FUNC2 (struct arche_platform_drvdata*) ; 
 int /*<<< orphan*/  arche_platform_pm_notifier ; 
 int /*<<< orphan*/  FUNC3 (struct arche_platform_drvdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct arche_platform_drvdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arche_platform_wd_irq ; 
 int /*<<< orphan*/  FUNC5 (struct arche_platform_drvdata*) ; 
 int /*<<< orphan*/  arche_platform_wd_irq_thread ; 
 int /*<<< orphan*/  dev_attr_state ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int FUNC10 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,int /*<<< orphan*/ *) ; 
 void* FUNC12 (struct device*,char*) ; 
 void* FUNC13 (struct device*,char*,unsigned int) ; 
 struct arche_platform_drvdata* FUNC14 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct arche_platform_drvdata*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (void*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct device_node*) ; 
 int FUNC22 (struct device_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct device*) ; 
 scalar_t__ FUNC23 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC24 (struct platform_device*,struct arche_platform_drvdata*) ; 
 int FUNC25 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	struct arche_platform_drvdata *arche_pdata;
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	int ret;
	unsigned int flags;

	arche_pdata = FUNC14(&pdev->dev, sizeof(*arche_pdata),
				   GFP_KERNEL);
	if (!arche_pdata)
		return -ENOMEM;

	/* setup svc reset gpio */
	arche_pdata->is_reset_act_hi = FUNC23(np,
							     "svc,reset-active-high");
	if (arche_pdata->is_reset_act_hi)
		flags = GPIOD_OUT_HIGH;
	else
		flags = GPIOD_OUT_LOW;

	arche_pdata->svc_reset = FUNC13(dev, "svc,reset", flags);
	if (FUNC0(arche_pdata->svc_reset)) {
		ret = FUNC1(arche_pdata->svc_reset);
		FUNC7(dev, "failed to request svc-reset GPIO: %d\n", ret);
		return ret;
	}
	FUNC3(arche_pdata, ARCHE_PLATFORM_STATE_OFF);

	arche_pdata->svc_sysboot = FUNC13(dev, "svc,sysboot",
						  GPIOD_OUT_LOW);
	if (FUNC0(arche_pdata->svc_sysboot)) {
		ret = FUNC1(arche_pdata->svc_sysboot);
		FUNC7(dev, "failed to request sysboot0 GPIO: %d\n", ret);
		return ret;
	}

	/* setup the clock request gpio first */
	arche_pdata->svc_refclk_req = FUNC13(dev, "svc,refclk-req",
						     GPIOD_IN);
	if (FUNC0(arche_pdata->svc_refclk_req)) {
		ret = FUNC1(arche_pdata->svc_refclk_req);
		FUNC7(dev, "failed to request svc-clk-req GPIO: %d\n", ret);
		return ret;
	}

	/* setup refclk2 to follow the pin */
	arche_pdata->svc_ref_clk = FUNC12(dev, "svc_ref_clk");
	if (FUNC0(arche_pdata->svc_ref_clk)) {
		ret = FUNC1(arche_pdata->svc_ref_clk);
		FUNC7(dev, "failed to get svc_ref_clk: %d\n", ret);
		return ret;
	}

	FUNC24(pdev, arche_pdata);

	arche_pdata->num_apbs = FUNC21(np);
	FUNC6(dev, "Number of APB's available - %d\n", arche_pdata->num_apbs);

	arche_pdata->wake_detect = FUNC13(dev, "svc,wake-detect",
						  GPIOD_IN);
	if (FUNC0(arche_pdata->wake_detect)) {
		ret = FUNC1(arche_pdata->wake_detect);
		FUNC7(dev, "Failed requesting wake_detect GPIO: %d\n", ret);
		return ret;
	}

	FUNC4(arche_pdata, WD_STATE_IDLE);

	arche_pdata->dev = &pdev->dev;

	FUNC26(&arche_pdata->wake_lock);
	FUNC18(&arche_pdata->platform_state_mutex);
	arche_pdata->wake_detect_irq =
		FUNC17(arche_pdata->wake_detect);

	ret = FUNC15(dev, arche_pdata->wake_detect_irq,
					arche_platform_wd_irq,
					arche_platform_wd_irq_thread,
					IRQF_TRIGGER_FALLING |
					IRQF_TRIGGER_RISING | IRQF_ONESHOT,
					FUNC9(dev), arche_pdata);
	if (ret) {
		FUNC7(dev, "failed to request wake detect IRQ %d\n", ret);
		return ret;
	}
	FUNC16(arche_pdata->wake_detect_irq);

	ret = FUNC10(dev, &dev_attr_state);
	if (ret) {
		FUNC7(dev, "failed to create state file in sysfs\n");
		return ret;
	}

	ret = FUNC22(np, NULL, NULL, dev);
	if (ret) {
		FUNC7(dev, "failed to populate child nodes %d\n", ret);
		goto err_device_remove;
	}

	arche_pdata->pm_notifier.notifier_call = arche_platform_pm_notifier;
	ret = FUNC25(&arche_pdata->pm_notifier);

	if (ret) {
		FUNC7(dev, "failed to register pm notifier %d\n", ret);
		goto err_device_remove;
	}

	/* Explicitly power off if requested */
	if (!FUNC23(pdev->dev.of_node, "arche,init-off")) {
		FUNC19(&arche_pdata->platform_state_mutex);
		ret = FUNC2(arche_pdata);
		if (ret) {
			FUNC7(dev, "Failed to cold boot svc %d\n", ret);
			goto err_coldboot;
		}
		FUNC5(arche_pdata);
		FUNC20(&arche_pdata->platform_state_mutex);
	}

	FUNC8(dev, "Device registered successfully\n");
	return 0;

err_coldboot:
	FUNC20(&arche_pdata->platform_state_mutex);
err_device_remove:
	FUNC11(&pdev->dev, &dev_attr_state);
	return ret;
}
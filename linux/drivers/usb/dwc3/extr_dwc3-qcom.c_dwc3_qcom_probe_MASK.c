#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct dwc3_qcom {scalar_t__ mode; int is_suspended; int num_clocks; int /*<<< orphan*/  resets; int /*<<< orphan*/ * clks; TYPE_1__* dwc3; int /*<<< orphan*/  qscratch_base; TYPE_2__* acpi_pdata; struct device* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {scalar_t__ qscratch_base_size; scalar_t__ qscratch_base_offset; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ USB_DR_MODE_PERIPHERAL ; 
 TYPE_2__* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int) ; 
 int FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,struct resource*) ; 
 struct dwc3_qcom* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int FUNC11 (struct platform_device*) ; 
 int FUNC12 (struct dwc3_qcom*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct platform_device*) ; 
 int FUNC14 (struct dwc3_qcom*) ; 
 int /*<<< orphan*/  FUNC15 (struct dwc3_qcom*) ; 
 int FUNC16 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct dwc3_qcom*,int) ; 
 scalar_t__ FUNC18 (struct device*) ; 
 struct resource* FUNC19 (struct resource*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 
 int /*<<< orphan*/  FUNC22 (struct platform_device*) ; 
 struct resource* FUNC23 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct platform_device*,struct dwc3_qcom*) ; 
 int /*<<< orphan*/  FUNC25 (struct device*) ; 
 int /*<<< orphan*/  FUNC26 (struct device*) ; 
 int /*<<< orphan*/  FUNC27 (struct device*) ; 
 int FUNC28 (int /*<<< orphan*/ ) ; 
 int FUNC29 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int,int) ; 

__attribute__((used)) static int FUNC32(struct platform_device *pdev)
{
	struct device_node	*np = pdev->dev.of_node;
	struct device		*dev = &pdev->dev;
	struct dwc3_qcom	*qcom;
	struct resource		*res, *parent_res = NULL;
	int			ret, i;
	bool			ignore_pipe_clk;

	qcom = FUNC9(&pdev->dev, sizeof(*qcom), GFP_KERNEL);
	if (!qcom)
		return -ENOMEM;

	FUNC24(pdev, qcom);
	qcom->dev = &pdev->dev;

	if (FUNC18(dev)) {
		qcom->acpi_pdata = FUNC2(dev);
		if (!qcom->acpi_pdata) {
			FUNC5(&pdev->dev, "no supporting ACPI device data\n");
			return -EINVAL;
		}
	}

	qcom->resets = FUNC10(dev);
	if (FUNC0(qcom->resets)) {
		ret = FUNC1(qcom->resets);
		FUNC5(&pdev->dev, "failed to get resets, err=%d\n", ret);
		return ret;
	}

	ret = FUNC28(qcom->resets);
	if (ret) {
		FUNC5(&pdev->dev, "failed to assert resets, err=%d\n", ret);
		return ret;
	}

	FUNC31(10, 1000);

	ret = FUNC29(qcom->resets);
	if (ret) {
		FUNC5(&pdev->dev, "failed to deassert resets, err=%d\n", ret);
		goto reset_assert;
	}

	ret = FUNC12(qcom, FUNC20(np));
	if (ret) {
		FUNC5(dev, "failed to get clocks\n");
		goto reset_assert;
	}

	res = FUNC23(pdev, IORESOURCE_MEM, 0);

	if (np) {
		parent_res = res;
	} else {
		parent_res = FUNC19(res, sizeof(struct resource), GFP_KERNEL);
		if (!parent_res)
			return -ENOMEM;

		parent_res->start = res->start +
			qcom->acpi_pdata->qscratch_base_offset;
		parent_res->end = parent_res->start +
			qcom->acpi_pdata->qscratch_base_size;
	}

	qcom->qscratch_base = FUNC8(dev, parent_res);
	if (FUNC0(qcom->qscratch_base)) {
		FUNC5(dev, "failed to map qscratch, err=%d\n", ret);
		ret = FUNC1(qcom->qscratch_base);
		goto clk_disable;
	}

	ret = FUNC16(pdev);
	if (ret) {
		FUNC5(dev, "failed to setup IRQs, err=%d\n", ret);
		goto clk_disable;
	}

	/*
	 * Disable pipe_clk requirement if specified. Used when dwc3
	 * operates without SSPHY and only HS/FS/LS modes are supported.
	 */
	ignore_pipe_clk = FUNC7(dev,
				"qcom,select-utmi-as-pipe-clk");
	if (ignore_pipe_clk)
		FUNC15(qcom);

	if (np)
		ret = FUNC13(pdev);
	else
		ret = FUNC11(pdev);

	if (ret) {
		FUNC5(dev, "failed to register DWC3 Core, err=%d\n", ret);
		goto depopulate;
	}

	qcom->mode = FUNC30(&qcom->dwc3->dev);

	/* enable vbus override for device mode */
	if (qcom->mode == USB_DR_MODE_PERIPHERAL)
		FUNC17(qcom, true);

	/* register extcon to override sw_vbus on Vbus change later */
	ret = FUNC14(qcom);
	if (ret)
		goto depopulate;

	FUNC6(&pdev->dev, 1);
	qcom->is_suspended = false;
	FUNC27(dev);
	FUNC25(dev);
	FUNC26(dev);

	return 0;

depopulate:
	if (np)
		FUNC21(&pdev->dev);
	else
		FUNC22(pdev);
clk_disable:
	for (i = qcom->num_clocks - 1; i >= 0; i--) {
		FUNC3(qcom->clks[i]);
		FUNC4(qcom->clks[i]);
	}
reset_assert:
	FUNC28(qcom->resets);

	return ret;
}
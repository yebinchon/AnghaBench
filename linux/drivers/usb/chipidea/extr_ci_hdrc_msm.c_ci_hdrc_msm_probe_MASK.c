#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  of_node; } ;
struct reset_control {TYPE_1__ dev; int /*<<< orphan*/  num_resources; int /*<<< orphan*/  resource; } ;
struct platform_device {TYPE_1__ dev; int /*<<< orphan*/  num_resources; int /*<<< orphan*/  resource; } ;
struct device_node {int dummy; } ;
struct clk {TYPE_1__ dev; int /*<<< orphan*/  num_resources; int /*<<< orphan*/  resource; } ;
struct TYPE_14__ {char* name; int flags; int /*<<< orphan*/  notify_event; int /*<<< orphan*/  capoffset; } ;
struct TYPE_16__ {int nr_resets; int /*<<< orphan*/  of_node; int /*<<< orphan*/ * ops; int /*<<< orphan*/  owner; } ;
struct ci_hdrc_msm {struct reset_control* core_clk; struct reset_control* iface_clk; struct reset_control* ci; TYPE_13__ pdata; int /*<<< orphan*/  hsic; struct reset_control* fs_clk; TYPE_5__ rcdev; struct reset_control* base; } ;

/* Variables and functions */
 int CI_HDRC_DISABLE_STREAMING ; 
 int CI_HDRC_OVERRIDE_AHB_BURST ; 
 int CI_HDRC_OVERRIDE_PHY_CONTROL ; 
 int CI_HDRC_REGS_SHARED ; 
 int /*<<< orphan*/  DEF_CAPOFFSET ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct reset_control*) ; 
 int FUNC1 (struct reset_control*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct reset_control* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_13__*) ; 
 int FUNC3 (struct ci_hdrc_msm*,struct reset_control*) ; 
 int /*<<< orphan*/  ci_hdrc_msm_notify_event ; 
 int /*<<< orphan*/  ci_hdrc_msm_reset_ops ; 
 int /*<<< orphan*/  FUNC4 (struct reset_control*) ; 
 int FUNC5 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 struct reset_control* FUNC8 (TYPE_1__*,char*) ; 
 struct reset_control* FUNC9 (TYPE_1__*,char*) ; 
 struct ci_hdrc_msm* FUNC10 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct reset_control* FUNC11 (struct reset_control*,int) ; 
 struct reset_control* FUNC12 (TYPE_1__*,char*) ; 
 int FUNC13 (TYPE_1__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (struct device_node*,char*) ; 
 struct device_node* FUNC15 (int /*<<< orphan*/ ,char*) ; 
 struct device_node* FUNC16 (struct device_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC18 (struct reset_control*,struct ci_hdrc_msm*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC23 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC24 (int,int) ; 

__attribute__((used)) static int FUNC25(struct platform_device *pdev)
{
	struct ci_hdrc_msm *ci;
	struct platform_device *plat_ci;
	struct clk *clk;
	struct reset_control *reset;
	int ret;
	struct device_node *ulpi_node, *phy_node;

	FUNC6(&pdev->dev, "ci_hdrc_msm_probe\n");

	ci = FUNC10(&pdev->dev, sizeof(*ci), GFP_KERNEL);
	if (!ci)
		return -ENOMEM;
	FUNC18(pdev, ci);

	ci->pdata.name = "ci_hdrc_msm";
	ci->pdata.capoffset = DEF_CAPOFFSET;
	ci->pdata.flags	= CI_HDRC_REGS_SHARED | CI_HDRC_DISABLE_STREAMING |
			  CI_HDRC_OVERRIDE_AHB_BURST |
			  CI_HDRC_OVERRIDE_PHY_CONTROL;
	ci->pdata.notify_event = ci_hdrc_msm_notify_event;

	reset = FUNC12(&pdev->dev, "core");
	if (FUNC0(reset))
		return FUNC1(reset);

	ci->core_clk = clk = FUNC8(&pdev->dev, "core");
	if (FUNC0(clk))
		return FUNC1(clk);

	ci->iface_clk = clk = FUNC8(&pdev->dev, "iface");
	if (FUNC0(clk))
		return FUNC1(clk);

	ci->fs_clk = clk = FUNC9(&pdev->dev, "fs");
	if (FUNC0(clk))
		return FUNC1(clk);

	ci->base = FUNC11(pdev, 1);
	if (FUNC0(ci->base))
		return FUNC1(ci->base);

	ci->rcdev.owner = THIS_MODULE;
	ci->rcdev.ops = &ci_hdrc_msm_reset_ops;
	ci->rcdev.of_node = pdev->dev.of_node;
	ci->rcdev.nr_resets = 2;
	ret = FUNC13(&pdev->dev, &ci->rcdev);
	if (ret)
		return ret;

	ret = FUNC5(ci->fs_clk);
	if (ret)
		return ret;

	FUNC22(reset);
	FUNC24(10000, 12000);
	FUNC23(reset);

	FUNC4(ci->fs_clk);

	ret = FUNC5(ci->core_clk);
	if (ret)
		return ret;

	ret = FUNC5(ci->iface_clk);
	if (ret)
		goto err_iface;

	ret = FUNC3(ci, pdev);
	if (ret)
		goto err_mux;

	ulpi_node = FUNC15(pdev->dev.of_node, "ulpi");
	if (ulpi_node) {
		phy_node = FUNC16(ulpi_node, NULL);
		ci->hsic = FUNC14(phy_node, "qcom,usb-hsic-phy");
		FUNC17(phy_node);
	}
	FUNC17(ulpi_node);

	plat_ci = FUNC2(&pdev->dev, pdev->resource,
				     pdev->num_resources, &ci->pdata);
	if (FUNC0(plat_ci)) {
		ret = FUNC1(plat_ci);
		if (ret != -EPROBE_DEFER)
			FUNC7(&pdev->dev, "ci_hdrc_add_device failed!\n");
		goto err_mux;
	}

	ci->ci = plat_ci;

	FUNC21(&pdev->dev);
	FUNC20(&pdev->dev);
	FUNC19(&pdev->dev);

	return 0;

err_mux:
	FUNC4(ci->iface_clk);
err_iface:
	FUNC4(ci->core_clk);
	return ret;
}
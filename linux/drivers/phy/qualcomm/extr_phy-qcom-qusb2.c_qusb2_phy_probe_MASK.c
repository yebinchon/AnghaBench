#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
typedef  scalar_t__ u32 ;
struct resource {int dummy; } ;
struct qusb2_phy {int override_imp_res_offset; int override_hstx_trim; int override_preemphasis; int override_preemphasis_width; struct phy_provider* phy; void* preemphasis_width; void* preemphasis_level; void* hstx_trim_value; void* imp_res_offset_value; struct phy_provider* cell; struct phy_provider* tcsr; int /*<<< orphan*/  cfg; TYPE_1__* vregs; struct phy_provider* phy_reset; struct phy_provider* iface_clk; struct phy_provider* ref_clk; struct phy_provider* cfg_ahb_clk; struct phy_provider* base; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
typedef  struct phy_provider phy ;
struct TYPE_3__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (struct phy_provider*) ; 
 int FUNC2 (struct phy_provider*) ; 
 int FUNC3 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct qusb2_phy*) ; 
 void* FUNC8 (struct device*,char*) ; 
 struct phy_provider* FUNC9 (struct device*,char*) ; 
 struct phy_provider* FUNC10 (struct device*,struct resource*) ; 
 struct qusb2_phy* FUNC11 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC12 (struct device*,int /*<<< orphan*/ *) ; 
 struct phy_provider* FUNC13 (struct device*,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC14 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct device*,int,TYPE_1__*) ; 
 struct phy_provider* FUNC16 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC19 (struct phy_provider*,struct qusb2_phy*) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 
 int /*<<< orphan*/  FUNC22 (struct device*) ; 
 int /*<<< orphan*/  FUNC23 (struct device*) ; 
 int /*<<< orphan*/  FUNC24 (struct device*) ; 
 int /*<<< orphan*/  qusb2_phy_gen_ops ; 
 int /*<<< orphan*/ * qusb2_phy_vreg_names ; 
 struct phy_provider* FUNC25 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC26(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct qusb2_phy *qphy;
	struct phy_provider *phy_provider;
	struct phy *generic_phy;
	struct resource *res;
	int ret, i;
	int num;
	u32 value;

	qphy = FUNC11(dev, sizeof(*qphy), GFP_KERNEL);
	if (!qphy)
		return -ENOMEM;

	res = FUNC20(pdev, IORESOURCE_MEM, 0);
	qphy->base = FUNC10(dev, res);
	if (FUNC1(qphy->base))
		return FUNC2(qphy->base);

	qphy->cfg_ahb_clk = FUNC8(dev, "cfg_ahb");
	if (FUNC1(qphy->cfg_ahb_clk)) {
		ret = FUNC2(qphy->cfg_ahb_clk);
		if (ret != -EPROBE_DEFER)
			FUNC5(dev, "failed to get cfg ahb clk, %d\n", ret);
		return ret;
	}

	qphy->ref_clk = FUNC8(dev, "ref");
	if (FUNC1(qphy->ref_clk)) {
		ret = FUNC2(qphy->ref_clk);
		if (ret != -EPROBE_DEFER)
			FUNC5(dev, "failed to get ref clk, %d\n", ret);
		return ret;
	}

	qphy->iface_clk = FUNC9(dev, "iface");
	if (FUNC1(qphy->iface_clk))
		return FUNC2(qphy->iface_clk);

	qphy->phy_reset = FUNC16(&pdev->dev, 0);
	if (FUNC1(qphy->phy_reset)) {
		FUNC5(dev, "failed to get phy core reset\n");
		return FUNC2(qphy->phy_reset);
	}

	num = FUNC0(qphy->vregs);
	for (i = 0; i < num; i++)
		qphy->vregs[i].supply = qusb2_phy_vreg_names[i];

	ret = FUNC15(dev, num, qphy->vregs);
	if (ret) {
		if (ret != -EPROBE_DEFER)
			FUNC5(dev, "failed to get regulator supplies: %d\n",
				ret);
		return ret;
	}

	/* Get the specific init parameters of QMP phy */
	qphy->cfg = FUNC17(dev);

	qphy->tcsr = FUNC25(dev->of_node,
							"qcom,tcsr-syscon");
	if (FUNC1(qphy->tcsr)) {
		FUNC4(dev, "failed to lookup TCSR regmap\n");
		qphy->tcsr = NULL;
	}

	qphy->cell = FUNC12(dev, NULL);
	if (FUNC1(qphy->cell)) {
		if (FUNC2(qphy->cell) == -EPROBE_DEFER)
			return -EPROBE_DEFER;
		qphy->cell = NULL;
		FUNC4(dev, "failed to lookup tune2 hstx trim value\n");
	}

	if (!FUNC18(dev->of_node, "qcom,imp-res-offset-value",
				  &value)) {
		qphy->imp_res_offset_value = (u8)value;
		qphy->override_imp_res_offset = true;
	}

	if (!FUNC18(dev->of_node, "qcom,hstx-trim-value",
				  &value)) {
		qphy->hstx_trim_value = (u8)value;
		qphy->override_hstx_trim = true;
	}

	if (!FUNC18(dev->of_node, "qcom,preemphasis-level",
				     &value)) {
		qphy->preemphasis_level = (u8)value;
		qphy->override_preemphasis = true;
	}

	if (!FUNC18(dev->of_node, "qcom,preemphasis-width",
				     &value)) {
		qphy->preemphasis_width = (u8)value;
		qphy->override_preemphasis_width = true;
	}

	FUNC24(dev);
	FUNC22(dev);
	/*
	 * Prevent runtime pm from being ON by default. Users can enable
	 * it using power/control in sysfs.
	 */
	FUNC23(dev);

	generic_phy = FUNC14(dev, NULL, &qusb2_phy_gen_ops);
	if (FUNC1(generic_phy)) {
		ret = FUNC2(generic_phy);
		FUNC5(dev, "failed to create phy, %d\n", ret);
		FUNC21(dev);
		return ret;
	}
	qphy->phy = generic_phy;

	FUNC7(dev, qphy);
	FUNC19(generic_phy, qphy);

	phy_provider = FUNC13(dev, of_phy_simple_xlate);
	if (!FUNC1(phy_provider))
		FUNC6(dev, "Registered Qcom-QUSB2 phy\n");
	else
		FUNC21(dev);

	return FUNC3(phy_provider);
}
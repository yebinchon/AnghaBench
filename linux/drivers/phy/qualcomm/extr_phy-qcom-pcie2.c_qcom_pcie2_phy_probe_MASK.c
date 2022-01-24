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
struct resource {int dummy; } ;
struct qcom_phy {struct phy_provider* pipe_reset; struct phy_provider* phy_reset; struct phy_provider* pipe_clk; TYPE_1__* vregs; struct phy_provider* base; struct device* dev; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
typedef  struct phy_provider phy ;
struct TYPE_3__ {char* supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (struct phy_provider*) ; 
 int FUNC2 (struct phy_provider*) ; 
 int FUNC3 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct phy_provider* FUNC5 (struct device*,int /*<<< orphan*/ *) ; 
 struct phy_provider* FUNC6 (struct device*,struct resource*) ; 
 struct qcom_phy* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC8 (struct device*,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC9 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct device*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 void* FUNC11 (struct device*,char*) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int FUNC12 (struct qcom_phy*) ; 
 int /*<<< orphan*/  FUNC13 (struct phy_provider*,struct qcom_phy*) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qcom_pcie2_ops ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct phy_provider *phy_provider;
	struct qcom_phy *qphy;
	struct resource *res;
	struct device *dev = &pdev->dev;
	struct phy *phy;
	int ret;

	qphy = FUNC7(dev, sizeof(*qphy), GFP_KERNEL);
	if (!qphy)
		return -ENOMEM;

	qphy->dev = dev;

	res = FUNC14(pdev, IORESOURCE_MEM, 0);
	qphy->base = FUNC6(dev, res);
	if (FUNC1(qphy->base))
		return FUNC2(qphy->base);

	ret = FUNC12(qphy);
	if (ret) {
		FUNC4(dev, "failed to register pipe_clk\n");
		return ret;
	}

	qphy->vregs[0].supply = "vdda-vp";
	qphy->vregs[1].supply = "vdda-vph";
	ret = FUNC10(dev, FUNC0(qphy->vregs), qphy->vregs);
	if (ret < 0)
		return ret;

	qphy->pipe_clk = FUNC5(dev, NULL);
	if (FUNC1(qphy->pipe_clk)) {
		FUNC4(dev, "failed to acquire pipe clock\n");
		return FUNC2(qphy->pipe_clk);
	}

	qphy->phy_reset = FUNC11(dev, "phy");
	if (FUNC1(qphy->phy_reset)) {
		FUNC4(dev, "failed to acquire phy reset\n");
		return FUNC2(qphy->phy_reset);
	}

	qphy->pipe_reset = FUNC11(dev, "pipe");
	if (FUNC1(qphy->pipe_reset)) {
		FUNC4(dev, "failed to acquire pipe reset\n");
		return FUNC2(qphy->pipe_reset);
	}

	phy = FUNC9(dev, dev->of_node, &qcom_pcie2_ops);
	if (FUNC1(phy)) {
		FUNC4(dev, "failed to create phy\n");
		return FUNC2(phy);
	}

	FUNC13(phy, qphy);

	phy_provider = FUNC8(dev, of_phy_simple_xlate);
	if (FUNC1(phy_provider))
		FUNC4(dev, "failed to register phy provider\n");

	return FUNC3(phy_provider);
}
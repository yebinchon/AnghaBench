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
struct tegra_pcie_dw {int phy_count; int update_fc_fixup; void* enable_cdm_check; TYPE_1__* dev; void* supports_clkreq; int /*<<< orphan*/  cid; int /*<<< orphan*/  max_speed; int /*<<< orphan*/  num_lanes; int /*<<< orphan*/  aspm_l0s_enter_lat; int /*<<< orphan*/  aspm_pwr_on_t; int /*<<< orphan*/  aspm_cmrt; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int FUNC3 (struct device_node*,char*) ; 
 void* FUNC4 (struct device_node*,char*) ; 
 int FUNC5 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct device_node*,char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct tegra_pcie_dw *pcie)
{
	struct device_node *np = pcie->dev->of_node;
	int ret;

	ret = FUNC5(np, "nvidia,aspm-cmrt-us", &pcie->aspm_cmrt);
	if (ret < 0) {
		FUNC1(pcie->dev, "Failed to read ASPM T_cmrt: %d\n", ret);
		return ret;
	}

	ret = FUNC5(np, "nvidia,aspm-pwr-on-t-us",
				   &pcie->aspm_pwr_on_t);
	if (ret < 0)
		FUNC1(pcie->dev, "Failed to read ASPM Power On time: %d\n",
			 ret);

	ret = FUNC5(np, "nvidia,aspm-l0s-entrance-latency-us",
				   &pcie->aspm_l0s_enter_lat);
	if (ret < 0)
		FUNC1(pcie->dev,
			 "Failed to read ASPM L0s Entrance latency: %d\n", ret);

	ret = FUNC5(np, "num-lanes", &pcie->num_lanes);
	if (ret < 0) {
		FUNC0(pcie->dev, "Failed to read num-lanes: %d\n", ret);
		return ret;
	}

	pcie->max_speed = FUNC2(np);

	ret = FUNC6(np, "nvidia,bpmp", 1, &pcie->cid);
	if (ret) {
		FUNC0(pcie->dev, "Failed to read Controller-ID: %d\n", ret);
		return ret;
	}

	ret = FUNC3(np, "phy-names");
	if (ret < 0) {
		FUNC0(pcie->dev, "Failed to find PHY entries: %d\n",
			ret);
		return ret;
	}
	pcie->phy_count = ret;

	if (FUNC4(np, "nvidia,update-fc-fixup"))
		pcie->update_fc_fixup = true;

	pcie->supports_clkreq =
		FUNC4(pcie->dev->of_node, "supports-clkreq");

	pcie->enable_cdm_check =
		FUNC4(np, "snps,enable-cdm-check");

	return 0;
}
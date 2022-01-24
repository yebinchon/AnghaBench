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
struct TYPE_3__ {struct device_node* of_node; } ;
struct phy {TYPE_1__ dev; } ;
struct of_phandle_args {int args_count; scalar_t__* args; struct device_node* np; } ;
struct mtk_tphy {int nphys; TYPE_2__* pdata; struct mtk_phy_instance** phys; } ;
struct mtk_phy_instance {scalar_t__ type; struct phy* phy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {scalar_t__ version; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct phy* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MTK_PHY_V1 ; 
 scalar_t__ MTK_PHY_V2 ; 
 scalar_t__ PHY_TYPE_PCIE ; 
 scalar_t__ PHY_TYPE_SATA ; 
 scalar_t__ PHY_TYPE_USB2 ; 
 scalar_t__ PHY_TYPE_USB3 ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 struct mtk_tphy* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_tphy*,struct mtk_phy_instance*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_tphy*,struct mtk_phy_instance*) ; 
 int /*<<< orphan*/  FUNC5 (struct mtk_tphy*,struct mtk_phy_instance*) ; 

__attribute__((used)) static struct phy *FUNC6(struct device *dev,
					struct of_phandle_args *args)
{
	struct mtk_tphy *tphy = FUNC2(dev);
	struct mtk_phy_instance *instance = NULL;
	struct device_node *phy_np = args->np;
	int index;

	if (args->args_count != 1) {
		FUNC1(dev, "invalid number of cells in 'phy' property\n");
		return FUNC0(-EINVAL);
	}

	for (index = 0; index < tphy->nphys; index++)
		if (phy_np == tphy->phys[index]->phy->dev.of_node) {
			instance = tphy->phys[index];
			break;
		}

	if (!instance) {
		FUNC1(dev, "failed to find appropriate phy\n");
		return FUNC0(-EINVAL);
	}

	instance->type = args->args[0];
	if (!(instance->type == PHY_TYPE_USB2 ||
	      instance->type == PHY_TYPE_USB3 ||
	      instance->type == PHY_TYPE_PCIE ||
	      instance->type == PHY_TYPE_SATA)) {
		FUNC1(dev, "unsupported device type: %d\n", instance->type);
		return FUNC0(-EINVAL);
	}

	if (tphy->pdata->version == MTK_PHY_V1) {
		FUNC4(tphy, instance);
	} else if (tphy->pdata->version == MTK_PHY_V2) {
		FUNC5(tphy, instance);
	} else {
		FUNC1(dev, "phy version is not supported\n");
		return FUNC0(-EINVAL);
	}

	FUNC3(tphy, instance);

	return instance->phy;
}
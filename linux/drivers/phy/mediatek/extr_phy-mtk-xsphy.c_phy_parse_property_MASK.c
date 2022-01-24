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
struct xsphy_instance {int type; int /*<<< orphan*/  efuse_rx_imp; int /*<<< orphan*/  efuse_tx_imp; int /*<<< orphan*/  efuse_intr; int /*<<< orphan*/  eye_term; int /*<<< orphan*/  eye_vrt; int /*<<< orphan*/  eye_src; TYPE_1__* phy; } ;
struct mtk_xsphy {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
#define  PHY_TYPE_USB2 129 
#define  PHY_TYPE_USB3 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct mtk_xsphy *xsphy,
				struct xsphy_instance *inst)
{
	struct device *dev = &inst->phy->dev;

	switch (inst->type) {
	case PHY_TYPE_USB2:
		FUNC2(dev, "mediatek,efuse-intr",
					 &inst->efuse_intr);
		FUNC2(dev, "mediatek,eye-src",
					 &inst->eye_src);
		FUNC2(dev, "mediatek,eye-vrt",
					 &inst->eye_vrt);
		FUNC2(dev, "mediatek,eye-term",
					 &inst->eye_term);
		FUNC0(dev, "intr:%d, src:%d, vrt:%d, term:%d\n",
			inst->efuse_intr, inst->eye_src,
			inst->eye_vrt, inst->eye_term);
		break;
	case PHY_TYPE_USB3:
		FUNC2(dev, "mediatek,efuse-intr",
					 &inst->efuse_intr);
		FUNC2(dev, "mediatek,efuse-tx-imp",
					 &inst->efuse_tx_imp);
		FUNC2(dev, "mediatek,efuse-rx-imp",
					 &inst->efuse_rx_imp);
		FUNC0(dev, "intr:%d, tx-imp:%d, rx-imp:%d\n",
			inst->efuse_intr, inst->efuse_tx_imp,
			inst->efuse_rx_imp);
		break;
	default:
		FUNC1(xsphy->dev, "incompatible phy type\n");
		return;
	}
}
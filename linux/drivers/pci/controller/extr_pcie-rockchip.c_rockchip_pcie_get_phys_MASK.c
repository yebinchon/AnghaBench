#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t u32 ;
struct rockchip_pcie {int legacy_phy; struct phy** phys; struct device* dev; } ;
struct phy {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct phy*) ; 
 size_t MAX_LANE_NUM ; 
 int FUNC1 (struct phy*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct phy* FUNC5 (struct device*,int /*<<< orphan*/ ,char*) ; 
 struct phy* FUNC6 (struct device*,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int FUNC9(struct rockchip_pcie *rockchip)
{
	struct device *dev = rockchip->dev;
	struct phy *phy;
	char *name;
	u32 i;

	phy = FUNC6(dev, "pcie-phy");
	if (!FUNC0(phy)) {
		rockchip->legacy_phy = true;
		rockchip->phys[0] = phy;
		FUNC4(dev, "legacy phy model is deprecated!\n");
		return 0;
	}

	if (FUNC1(phy) == -EPROBE_DEFER)
		return FUNC1(phy);

	FUNC2(dev, "missing legacy phy; search for per-lane PHY\n");

	for (i = 0; i < MAX_LANE_NUM; i++) {
		name = FUNC7(GFP_KERNEL, "pcie-phy-%u", i);
		if (!name)
			return -ENOMEM;

		phy = FUNC5(dev, dev->of_node, name);
		FUNC8(name);

		if (FUNC0(phy)) {
			if (FUNC1(phy) != -EPROBE_DEFER)
				FUNC3(dev, "missing phy for lane %d: %ld\n",
					i, FUNC1(phy));
			return FUNC1(phy);
		}

		rockchip->phys[i] = phy;
	}

	return 0;
}
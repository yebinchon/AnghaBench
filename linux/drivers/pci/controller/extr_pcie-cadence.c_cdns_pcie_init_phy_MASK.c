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
struct phy {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;
struct device_link {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct cdns_pcie {int phy_count; struct device_link** link; struct phy** phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DL_FLAG_STATELESS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct phy*) ; 
 int FUNC1 (struct phy*) ; 
 int FUNC2 (struct cdns_pcie*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct device_link* FUNC4 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device_link*) ; 
 void* FUNC6 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 struct phy* FUNC7 (struct device*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,struct phy*) ; 
 int FUNC9 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*,char*,int,char const**) ; 

int FUNC11(struct device *dev, struct cdns_pcie *pcie)
{
	struct device_node *np = dev->of_node;
	int phy_count;
	struct phy **phy;
	struct device_link **link;
	int i;
	int ret;
	const char *name;

	phy_count = FUNC9(np, "phy-names");
	if (phy_count < 1) {
		FUNC3(dev, "no phy-names.  PHY will not be initialized\n");
		pcie->phy_count = 0;
		return 0;
	}

	phy = FUNC6(dev, phy_count, sizeof(*phy), GFP_KERNEL);
	if (!phy)
		return -ENOMEM;

	link = FUNC6(dev, phy_count, sizeof(*link), GFP_KERNEL);
	if (!link)
		return -ENOMEM;

	for (i = 0; i < phy_count; i++) {
		FUNC10(np, "phy-names", i, &name);
		phy[i] = FUNC7(dev, name);
		if (FUNC0(phy[i])) {
			ret = FUNC1(phy[i]);
			goto err_phy;
		}
		link[i] = FUNC4(dev, &phy[i]->dev, DL_FLAG_STATELESS);
		if (!link[i]) {
			FUNC8(dev, phy[i]);
			ret = -EINVAL;
			goto err_phy;
		}
	}

	pcie->phy_count = phy_count;
	pcie->phy = phy;
	pcie->link = link;

	ret =  FUNC2(pcie);
	if (ret)
		goto err_phy;

	return 0;

err_phy:
	while (--i >= 0) {
		FUNC5(link[i]);
		FUNC8(dev, phy[i]);
	}

	return ret;
}
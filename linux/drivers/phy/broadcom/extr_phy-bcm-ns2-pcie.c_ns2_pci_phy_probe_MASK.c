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
struct phy_provider {int /*<<< orphan*/  dev; } ;
struct phy {int /*<<< orphan*/  dev; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct mdio_device {struct device dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct phy_provider*) ; 
 int FUNC1 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 struct phy_provider* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ns2_pci_phy_ops ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  FUNC7 (struct phy_provider*,struct mdio_device*) ; 

__attribute__((used)) static int FUNC8(struct mdio_device *mdiodev)
{
	struct device *dev = &mdiodev->dev;
	struct phy_provider *provider;
	struct phy *phy;

	phy = FUNC6(dev, dev->of_node, &ns2_pci_phy_ops);
	if (FUNC0(phy)) {
		FUNC2(dev, "failed to create Phy\n");
		return FUNC1(phy);
	}

	FUNC7(phy, mdiodev);

	provider = FUNC5(&phy->dev,
						 of_phy_simple_xlate);
	if (FUNC0(provider)) {
		FUNC2(dev, "failed to register Phy provider\n");
		return FUNC1(provider);
	}

	FUNC3(dev, "%s PHY registered\n", FUNC4(dev));

	return 0;
}
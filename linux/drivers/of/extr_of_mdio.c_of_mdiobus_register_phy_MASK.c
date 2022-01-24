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
typedef  size_t u32 ;
struct TYPE_3__ {int /*<<< orphan*/  fwnode; struct device_node* of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; int /*<<< orphan*/  reset_deassert_delay; int /*<<< orphan*/  reset_assert_delay; } ;
struct phy_device {int irq; TYPE_2__ mdio; } ;
struct mii_bus {int* irq; int phy_ignore_ta_mask; int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,struct device_node*,size_t) ; 
 struct phy_device* FUNC3 (struct mii_bus*,size_t,int) ; 
 int FUNC4 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,size_t*) ; 
 int FUNC7 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*) ; 
 scalar_t__ FUNC10 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct phy_device* FUNC12 (struct mii_bus*,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct phy_device*) ; 
 int FUNC14 (struct phy_device*) ; 

__attribute__((used)) static int FUNC15(struct mii_bus *mdio,
				    struct device_node *child, u32 addr)
{
	struct phy_device *phy;
	bool is_c45;
	int rc;
	u32 phy_id;

	is_c45 = FUNC4(child,
					 "ethernet-phy-ieee802.3-c45");

	if (!is_c45 && !FUNC6(child, &phy_id))
		phy = FUNC12(mdio, addr, phy_id, 0, NULL);
	else
		phy = FUNC3(mdio, addr, is_c45);
	if (FUNC0(phy))
		return FUNC1(phy);

	rc = FUNC7(child, 0);
	if (rc == -EPROBE_DEFER) {
		FUNC13(phy);
		return rc;
	}
	if (rc > 0) {
		phy->irq = rc;
		mdio->irq[addr] = rc;
	} else {
		phy->irq = mdio->irq[addr];
	}

	if (FUNC10(child, "broken-turn-around"))
		mdio->phy_ignore_ta_mask |= 1 << addr;

	FUNC11(child, "reset-assert-us",
			     &phy->mdio.reset_assert_delay);
	FUNC11(child, "reset-deassert-us",
			     &phy->mdio.reset_deassert_delay);

	/* Associate the OF node with the device structure so it
	 * can be looked up later */
	FUNC8(child);
	phy->mdio.dev.of_node = child;
	phy->mdio.dev.fwnode = FUNC5(child);

	/* All data is now stored in the phy struct;
	 * register it */
	rc = FUNC14(phy);
	if (rc) {
		FUNC13(phy);
		FUNC9(child);
		return rc;
	}

	FUNC2(&mdio->dev, "registered phy %pOFn at address %i\n",
		child, addr);
	return 0;
}
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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct phy {TYPE_1__ dev; } ;
struct mt7621_pci_phy_instance {int dummy; } ;
struct mt7621_pci_phy {scalar_t__ bypass_pipe_rst; } ;

/* Variables and functions */
 struct mt7621_pci_phy* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mt7621_pci_phy*,struct mt7621_pci_phy_instance*) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7621_pci_phy*,struct mt7621_pci_phy_instance*) ; 
 struct mt7621_pci_phy_instance* FUNC3 (struct phy*) ; 

__attribute__((used)) static int FUNC4(struct phy *phy)
{
	struct mt7621_pci_phy_instance *instance = FUNC3(phy);
	struct mt7621_pci_phy *mphy = FUNC0(phy->dev.parent);

	if (mphy->bypass_pipe_rst)
		FUNC1(mphy, instance);

	FUNC2(mphy, instance);

	return 0;
}
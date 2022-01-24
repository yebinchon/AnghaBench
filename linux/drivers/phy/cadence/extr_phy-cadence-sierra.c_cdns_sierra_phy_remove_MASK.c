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
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct cdns_sierra_phy {int nsubnodes; TYPE_1__* phys; int /*<<< orphan*/  apb_rst; int /*<<< orphan*/  phy_rst; } ;
struct TYPE_3__ {int /*<<< orphan*/  lnk_rst; } ;

/* Variables and functions */
 struct cdns_sierra_phy* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct cdns_sierra_phy *phy = FUNC0(pdev->dev.parent);
	int i;

	FUNC2(phy->phy_rst);
	FUNC2(phy->apb_rst);
	FUNC1(&pdev->dev);

	/*
	 * The device level resets will be put automatically.
	 * Need to put the subnode resets here though.
	 */
	for (i = 0; i < phy->nsubnodes; i++) {
		FUNC2(phy->phys[i].lnk_rst);
		FUNC3(phy->phys[i].lnk_rst);
	}
	return 0;
}
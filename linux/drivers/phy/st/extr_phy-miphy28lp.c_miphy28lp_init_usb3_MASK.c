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
struct miphy28lp_phy {scalar_t__ pipebase; int /*<<< orphan*/  base; struct miphy28lp_dev* phydev; } ;
struct miphy28lp_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MIPHY_CTRL_SYNC_D_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct miphy28lp_phy*) ; 
 int FUNC3 (struct miphy28lp_phy*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct miphy28lp_phy*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct miphy28lp_phy *miphy_phy)
{
	struct miphy28lp_dev *miphy_dev = miphy_phy->phydev;
	int err;

	if ((!miphy_phy->base) || (!miphy_phy->pipebase))
		return -EINVAL;

	FUNC1(miphy_dev->dev, "usb3-up mode, addr 0x%p\n", miphy_phy->base);

	/* MiPHY path and clocking init */
	err = FUNC3(miphy_phy, MIPHY_CTRL_SYNC_D_EN);
	if (err) {
		FUNC0(miphy_dev->dev, "USB3 phy setup failed\n");
		return err;
	}

	/* initialize miphy */
	FUNC2(miphy_phy);

	/* PIPE Wrapper Configuration */
	FUNC5(0x68, miphy_phy->pipebase + 0x23);
	FUNC5(0x61, miphy_phy->pipebase + 0x24);
	FUNC5(0x68, miphy_phy->pipebase + 0x26);
	FUNC5(0x61, miphy_phy->pipebase + 0x27);
	FUNC5(0x18, miphy_phy->pipebase + 0x29);
	FUNC5(0x61, miphy_phy->pipebase + 0x2a);

	/* pipe Wrapper usb3 TX swing de-emph margin PREEMPH[7:4], SWING[3:0] */
	FUNC5(0X67, miphy_phy->pipebase + 0x68);
	FUNC5(0x0d, miphy_phy->pipebase + 0x69);
	FUNC5(0X67, miphy_phy->pipebase + 0x6a);
	FUNC5(0X0d, miphy_phy->pipebase + 0x6b);
	FUNC5(0X67, miphy_phy->pipebase + 0x6c);
	FUNC5(0X0d, miphy_phy->pipebase + 0x6d);
	FUNC5(0X67, miphy_phy->pipebase + 0x6e);
	FUNC5(0X0d, miphy_phy->pipebase + 0x6f);

	return FUNC4(miphy_phy);
}
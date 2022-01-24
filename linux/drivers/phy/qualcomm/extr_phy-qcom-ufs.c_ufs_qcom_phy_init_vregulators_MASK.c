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
struct ufs_qcom_phy {int /*<<< orphan*/  vddp_ref_clk; int /*<<< orphan*/  dev; int /*<<< orphan*/  vdda_phy; int /*<<< orphan*/  vdda_pll; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 

int FUNC1(struct ufs_qcom_phy *phy_common)
{
	int err;

	err = FUNC0(phy_common->dev, &phy_common->vdda_pll,
		"vdda-pll");
	if (err)
		goto out;

	err = FUNC0(phy_common->dev, &phy_common->vdda_phy,
		"vdda-phy");

	if (err)
		goto out;

	err = FUNC0(phy_common->dev, &phy_common->vddp_ref_clk,
				     "vddp-ref-clk");

out:
	return err;
}
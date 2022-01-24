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
struct TYPE_2__ {void* min_uV; void* max_uV; } ;
struct ufs_qcom_phy {int /*<<< orphan*/  name; TYPE_1__ vdda_phy; } ;
struct ufs_qcom_phy_qmp_14nm {struct ufs_qcom_phy common_cfg; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  UFS_PHY_NAME ; 
 void* UFS_PHY_VDDA_PHY_UV ; 
 struct ufs_qcom_phy_qmp_14nm* FUNC0 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  phy_14nm_ops ; 
 int /*<<< orphan*/  FUNC1 (struct phy*,struct ufs_qcom_phy_qmp_14nm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct phy* FUNC3 (struct platform_device*,struct ufs_qcom_phy*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ufs_qcom_phy*) ; 
 int FUNC5 (struct ufs_qcom_phy*) ; 
 int /*<<< orphan*/  FUNC6 (struct ufs_qcom_phy*) ; 
 int /*<<< orphan*/  ufs_qcom_phy_qmp_14nm_phy_ops ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct phy *generic_phy;
	struct ufs_qcom_phy_qmp_14nm *phy;
	struct ufs_qcom_phy *phy_common;
	int err = 0;

	phy = FUNC0(dev, sizeof(*phy), GFP_KERNEL);
	if (!phy) {
		err = -ENOMEM;
		goto out;
	}
	phy_common = &phy->common_cfg;

	generic_phy = FUNC3(pdev, phy_common,
				&ufs_qcom_phy_qmp_14nm_phy_ops, &phy_14nm_ops);

	if (!generic_phy) {
		err = -EIO;
		goto out;
	}

	err = FUNC4(phy_common);
	if (err)
		goto out;

	err = FUNC5(phy_common);
	if (err)
		goto out;

	phy_common->vdda_phy.max_uV = UFS_PHY_VDDA_PHY_UV;
	phy_common->vdda_phy.min_uV = UFS_PHY_VDDA_PHY_UV;

	FUNC6(phy_common);

	FUNC1(generic_phy, phy);

	FUNC2(phy_common->name, UFS_PHY_NAME, sizeof(phy_common->name));

out:
	return err;
}
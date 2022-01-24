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
struct ufs_qcom_host {struct phy* generic_phy; } ;
struct ufs_hba {int dummy; } ;
struct phy {int dummy; } ;
typedef  enum ufs_pm_op { ____Placeholder_ufs_pm_op } ufs_pm_op ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct phy*) ; 
 int /*<<< orphan*/  FUNC1 (struct ufs_qcom_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct ufs_hba*) ; 
 scalar_t__ FUNC3 (struct ufs_hba*) ; 
 struct ufs_qcom_host* FUNC4 (struct ufs_hba*) ; 

__attribute__((used)) static int FUNC5(struct ufs_hba *hba, enum ufs_pm_op pm_op)
{
	struct ufs_qcom_host *host = FUNC4(hba);
	struct phy *phy = host->generic_phy;
	int ret = 0;

	if (FUNC3(hba)) {
		/*
		 * Disable the tx/rx lane symbol clocks before PHY is
		 * powered down as the PLL source should be disabled
		 * after downstream clocks are disabled.
		 */
		FUNC1(host);
		FUNC0(phy);

	} else if (!FUNC2(hba)) {
		FUNC1(host);
	}

	return ret;
}
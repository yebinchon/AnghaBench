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
struct ufs_hisi_host {int in_suspend; } ;
struct ufs_hba {int dummy; } ;
typedef  enum ufs_pm_op { ____Placeholder_ufs_pm_op } ufs_pm_op ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_SYSCTRL_REF_CLOCK_EN ; 
 int /*<<< orphan*/  PHY_CLK_CTRL ; 
 int /*<<< orphan*/  UFS_DEVICE_RESET_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ufs_hisi_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ufs_hisi_host*,int,int /*<<< orphan*/ ) ; 
 struct ufs_hisi_host* FUNC4 (struct ufs_hba*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct ufs_hba *hba, enum ufs_pm_op pm_op)
{
	struct ufs_hisi_host *host = FUNC4(hba);

	if (FUNC5(pm_op))
		return 0;

	if (host->in_suspend) {
		FUNC0(1);
		return 0;
	}

	FUNC2(host, BIT_SYSCTRL_REF_CLOCK_EN, PHY_CLK_CTRL);
	FUNC1(10);
	/* set ref_dig_clk override of PHY PCS to 0 */
	FUNC3(host, 0x00100000, UFS_DEVICE_RESET_CTRL);

	host->in_suspend = true;

	return 0;
}
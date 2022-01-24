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
struct ufs_hisi_host {int dummy; } ;
struct ufs_hba {int dummy; } ;

/* Variables and functions */
 int BIT_SYSCTRL_REF_CLOCK_EN ; 
 int BIT_UFS_REFCLK_ISO_EN ; 
 int BIT_UFS_REFCLK_SRC_SEl ; 
 int /*<<< orphan*/  PHY_CLK_CTRL ; 
 int /*<<< orphan*/  PHY_ISO_EN ; 
 int /*<<< orphan*/  UFS_SYSCTRL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ufs_hisi_host*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ufs_hisi_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ufs_hisi_host*,int,int /*<<< orphan*/ ) ; 
 struct ufs_hisi_host* FUNC4 (struct ufs_hba*) ; 

__attribute__((used)) static void FUNC5(struct ufs_hba *hba)
{
	struct ufs_hisi_host *host = FUNC4(hba);

	FUNC1(host, BIT_SYSCTRL_REF_CLOCK_EN, PHY_CLK_CTRL);
	if (FUNC2(host, PHY_CLK_CTRL) & BIT_SYSCTRL_REF_CLOCK_EN)
		FUNC0(1);
	/* use abb clk */
	FUNC1(host, BIT_UFS_REFCLK_SRC_SEl, UFS_SYSCTRL);
	FUNC1(host, BIT_UFS_REFCLK_ISO_EN, PHY_ISO_EN);
	/* open mphy ref clk */
	FUNC3(host, BIT_SYSCTRL_REF_CLOCK_EN, PHY_CLK_CTRL);
}
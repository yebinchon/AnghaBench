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
typedef  int u32 ;
struct ufs_qcom_host {int dummy; } ;
struct ufs_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DME_VS_CORE_CLK_CTRL ; 
 int DME_VS_CORE_CLK_CTRL_CORE_CLK_DIV_EN_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ufs_qcom_host*) ; 
 int FUNC2 (struct ufs_hba*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct ufs_hba*,int /*<<< orphan*/ ,int) ; 
 struct ufs_qcom_host* FUNC4 (struct ufs_hba*) ; 

__attribute__((used)) static int FUNC5(struct ufs_hba *hba)
{
	struct ufs_qcom_host *host = FUNC4(hba);
	int err;
	u32 core_clk_ctrl_reg;

	if (!FUNC1(host))
		return 0;

	err = FUNC2(hba,
			    FUNC0(DME_VS_CORE_CLK_CTRL),
			    &core_clk_ctrl_reg);

	/* make sure CORE_CLK_DIV_EN is cleared */
	if (!err &&
	    (core_clk_ctrl_reg & DME_VS_CORE_CLK_CTRL_CORE_CLK_DIV_EN_BIT)) {
		core_clk_ctrl_reg &= ~DME_VS_CORE_CLK_CTRL_CORE_CLK_DIV_EN_BIT;
		err = FUNC3(hba,
				    FUNC0(DME_VS_CORE_CLK_CTRL),
				    core_clk_ctrl_reg);
	}

	return err;
}
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
struct ufs_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PA_VS_CONFIG_REG1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ufs_hba*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct ufs_hba*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct ufs_hba *hba)
{
	int err;
	u32 pa_vs_config_reg1;

	err = FUNC1(hba, FUNC0(PA_VS_CONFIG_REG1),
			     &pa_vs_config_reg1);
	if (err)
		goto out;

	/* Allow extension of MSB bits of PA_SaveConfigTime attribute */
	err = FUNC2(hba, FUNC0(PA_VS_CONFIG_REG1),
			    (pa_vs_config_reg1 | (1 << 12)));

out:
	return err;
}
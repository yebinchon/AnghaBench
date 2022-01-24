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
struct ufs_pa_layer_attr {int /*<<< orphan*/  member_0; } ;
struct ufs_hba {int dummy; } ;
typedef  int /*<<< orphan*/  final_params ;

/* Variables and functions */
 int /*<<< orphan*/  PRE_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (struct ufs_pa_layer_attr*,struct ufs_pa_layer_attr*,int) ; 
 int FUNC1 (struct ufs_hba*,struct ufs_pa_layer_attr*) ; 
 int /*<<< orphan*/  FUNC2 (struct ufs_hba*) ; 
 int FUNC3 (struct ufs_hba*,int /*<<< orphan*/ ,struct ufs_pa_layer_attr*,struct ufs_pa_layer_attr*) ; 

int FUNC4(struct ufs_hba *hba,
		struct ufs_pa_layer_attr *desired_pwr_mode)
{
	struct ufs_pa_layer_attr final_params = { 0 };
	int ret;

	ret = FUNC3(hba, PRE_CHANGE,
					desired_pwr_mode, &final_params);

	if (ret)
		FUNC0(&final_params, desired_pwr_mode, sizeof(final_params));

	ret = FUNC1(hba, &final_params);
	if (!ret)
		FUNC2(hba);

	return ret;
}
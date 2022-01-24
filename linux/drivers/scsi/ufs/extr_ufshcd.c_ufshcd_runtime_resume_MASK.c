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
struct ufs_hba {int /*<<< orphan*/  uic_link_state; int /*<<< orphan*/  curr_dev_pwr_mode; int /*<<< orphan*/  dev; int /*<<< orphan*/  is_powered; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  UFS_RUNTIME_PM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ufs_hba*,int /*<<< orphan*/ ) ; 

int FUNC6(struct ufs_hba *hba)
{
	int ret = 0;
	ktime_t start = FUNC1();

	if (!hba)
		return -EINVAL;

	if (!hba->is_powered)
		goto out;
	else
		ret = FUNC5(hba, UFS_RUNTIME_PM);
out:
	FUNC4(FUNC0(hba->dev), ret,
		FUNC3(FUNC2(FUNC1(), start)),
		hba->curr_dev_pwr_mode, hba->uic_link_state);
	return ret;
}
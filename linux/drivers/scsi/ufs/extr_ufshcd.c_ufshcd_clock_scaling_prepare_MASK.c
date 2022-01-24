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
struct ufs_hba {int /*<<< orphan*/  clk_scaling_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOORBELL_CLR_TOUT_US ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct ufs_hba*) ; 
 scalar_t__ FUNC3 (struct ufs_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ufs_hba *hba)
{
	#define DOORBELL_CLR_TOUT_US		(1000 * 1000) /* 1 sec */
	int ret = 0;
	/*
	 * make sure that there are no outstanding requests when
	 * clock scaling is in progress
	 */
	FUNC1(hba);
	FUNC0(&hba->clk_scaling_lock);
	if (FUNC3(hba, DOORBELL_CLR_TOUT_US)) {
		ret = -EBUSY;
		FUNC4(&hba->clk_scaling_lock);
		FUNC2(hba);
	}

	return ret;
}
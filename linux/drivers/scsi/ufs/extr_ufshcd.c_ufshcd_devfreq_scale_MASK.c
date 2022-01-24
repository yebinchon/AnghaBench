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
struct ufs_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  POST_CHANGE ; 
 int FUNC0 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct ufs_hba*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ufs_hba*) ; 
 int FUNC4 (struct ufs_hba*,int) ; 
 int FUNC5 (struct ufs_hba*,int) ; 
 int FUNC6 (struct ufs_hba*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ufs_hba *hba, bool scale_up)
{
	int ret = 0;

	/* let's not get into low power until clock scaling is completed */
	FUNC2(hba, false);

	ret = FUNC0(hba);
	if (ret)
		return ret;

	/* scale down the gear before scaling down clocks */
	if (!scale_up) {
		ret = FUNC5(hba, false);
		if (ret)
			goto out;
	}

	ret = FUNC4(hba, scale_up);
	if (ret) {
		if (!scale_up)
			FUNC5(hba, true);
		goto out;
	}

	/* scale up the gear after scaling up clocks */
	if (scale_up) {
		ret = FUNC5(hba, true);
		if (ret) {
			FUNC4(hba, false);
			goto out;
		}
	}

	ret = FUNC6(hba, scale_up, POST_CHANGE);

out:
	FUNC1(hba);
	FUNC3(hba);
	return ret;
}
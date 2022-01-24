#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  vcc; int /*<<< orphan*/  vccq; int /*<<< orphan*/  vccq2; } ;
struct TYPE_4__ {int /*<<< orphan*/  is_lu_power_on_wp; } ;
struct ufs_hba {TYPE_1__ vreg_info; int /*<<< orphan*/  dev; TYPE_2__ dev_info; } ;

/* Variables and functions */
 int FUNC0 (struct ufs_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ufs_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ufs_hba*) ; 
 scalar_t__ FUNC3 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct ufs_hba*) ; 
 scalar_t__ FUNC5 (struct ufs_hba*) ; 
 int FUNC6 (struct ufs_hba*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct ufs_hba *hba)
{
	int ret = 0;

	if (FUNC5(hba) && FUNC3(hba) &&
	    !hba->dev_info.is_lu_power_on_wp) {
		ret = FUNC6(hba, true);
	} else if (!FUNC4(hba)) {
		if (!ret && !FUNC2(hba)) {
			ret = FUNC0(hba, hba->vreg_info.vccq);
			if (ret)
				goto vcc_disable;
			ret = FUNC0(hba, hba->vreg_info.vccq2);
			if (ret)
				goto vccq_lpm;
		}
		ret = FUNC7(hba->dev, hba->vreg_info.vcc, true);
	}
	goto out;

vccq_lpm:
	FUNC1(hba, hba->vreg_info.vccq);
vcc_disable:
	FUNC7(hba->dev, hba->vreg_info.vcc, false);
out:
	return ret;
}
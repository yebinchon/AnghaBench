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
struct ufs_hba {int is_powered; } ;

/* Variables and functions */
 int FUNC0 (struct ufs_hba*) ; 
 int FUNC1 (struct ufs_hba*) ; 
 int FUNC2 (struct ufs_hba*) ; 
 int FUNC3 (struct ufs_hba*,int) ; 
 int FUNC4 (struct ufs_hba*,int) ; 
 int FUNC5 (struct ufs_hba*,int) ; 
 int FUNC6 (struct ufs_hba*) ; 

__attribute__((used)) static int FUNC7(struct ufs_hba *hba)
{
	int err;

	/*
	 * Handle host controller power separately from the UFS device power
	 * rails as it will help controlling the UFS host controller power
	 * collapse easily which is different than UFS device power collapse.
	 * Also, enable the host controller power before we go ahead with rest
	 * of the initialization here.
	 */
	err = FUNC1(hba);
	if (err)
		goto out;

	err = FUNC4(hba, true);
	if (err)
		goto out;

	err = FUNC0(hba);
	if (err)
		goto out_disable_hba_vreg;

	err = FUNC3(hba, true);
	if (err)
		goto out_disable_hba_vreg;

	err = FUNC2(hba);
	if (err)
		goto out_disable_clks;

	err = FUNC5(hba, true);
	if (err)
		goto out_disable_clks;

	err = FUNC6(hba);
	if (err)
		goto out_disable_vreg;

	hba->is_powered = true;
	goto out;

out_disable_vreg:
	FUNC5(hba, false);
out_disable_clks:
	FUNC3(hba, false);
out_disable_hba_vreg:
	FUNC4(hba, false);
out:
	return err;
}
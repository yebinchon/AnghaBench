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
struct ufs_hba {int is_powered; scalar_t__ devfreq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct ufs_hba*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ufs_hba*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ufs_hba*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct ufs_hba*) ; 

__attribute__((used)) static void FUNC6(struct ufs_hba *hba)
{
	if (hba->is_powered) {
		FUNC5(hba);
		FUNC3(hba, false);
		FUNC4(hba);
		if (FUNC0(hba))
			if (hba->devfreq)
				FUNC4(hba);
		FUNC1(hba, false);
		FUNC2(hba, false);
		hba->is_powered = false;
	}
}
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
struct ufs_hba {int nutmrs; int /*<<< orphan*/  tm_slots_in_use; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct ufs_hba *hba, int *free_slot)
{
	int tag;
	bool ret = false;

	if (!free_slot)
		goto out;

	do {
		tag = FUNC0(&hba->tm_slots_in_use, hba->nutmrs);
		if (tag >= hba->nutmrs)
			goto out;
	} while (FUNC1(tag, &hba->tm_slots_in_use));

	*free_slot = tag;
	ret = true;
out:
	return ret;
}
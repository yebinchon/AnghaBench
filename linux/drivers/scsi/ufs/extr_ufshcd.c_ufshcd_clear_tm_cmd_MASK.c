#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ufs_hba {TYPE_1__* host; int /*<<< orphan*/  outstanding_tasks; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_UTP_TASK_REQ_DOOR_BELL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ufs_hba*,int) ; 
 int FUNC4 (struct ufs_hba*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC5(struct ufs_hba *hba, int tag)
{
	int err = 0;
	u32 mask = 1 << tag;
	unsigned long flags;

	if (!FUNC2(tag, &hba->outstanding_tasks))
		goto out;

	FUNC0(hba->host->host_lock, flags);
	FUNC3(hba, tag);
	FUNC1(hba->host->host_lock, flags);

	/* poll for max. 1 sec to clear door bell register by h/w */
	err = FUNC4(hba,
			REG_UTP_TASK_REQ_DOOR_BELL,
			mask, 0, 1000, 1000, true);
out:
	return err;
}
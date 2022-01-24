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
struct ufs_hba {int /*<<< orphan*/  outstanding_reqs; TYPE_1__* lrb; } ;
struct TYPE_2__ {int /*<<< orphan*/  compl_time_stamp; int /*<<< orphan*/  issue_time_stamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_UTP_TRANSFER_REQ_DOOR_BELL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ufs_hba*,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct ufs_hba*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static inline
void FUNC7(struct ufs_hba *hba, unsigned int task_tag)
{
	hba->lrb[task_tag].issue_time_stamp = FUNC1();
	hba->lrb[task_tag].compl_time_stamp = FUNC2(0, 0);
	FUNC4(hba);
	FUNC0(task_tag, &hba->outstanding_reqs);
	FUNC5(hba, 1 << task_tag, REG_UTP_TRANSFER_REQ_DOOR_BELL);
	/* Make sure that doorbell is committed immediately */
	FUNC6();
	FUNC3(hba, task_tag, "send");
}
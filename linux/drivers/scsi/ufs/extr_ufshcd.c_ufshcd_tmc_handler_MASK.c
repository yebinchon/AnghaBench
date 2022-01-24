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
typedef  int u32 ;
struct ufs_hba {int tm_condition; int outstanding_tasks; int /*<<< orphan*/  tm_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_UTP_TASK_REQ_DOOR_BELL ; 
 int FUNC0 (struct ufs_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ufs_hba *hba)
{
	u32 tm_doorbell;

	tm_doorbell = FUNC0(hba, REG_UTP_TASK_REQ_DOOR_BELL);
	hba->tm_condition = tm_doorbell ^ hba->outstanding_tasks;
	FUNC1(&hba->tm_wq);
}
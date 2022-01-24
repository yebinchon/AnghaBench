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
struct bnx2fc_hba {struct bnx2fc_hba* tgt_ofld_list; int /*<<< orphan*/ * cmd_mgr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2fc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2fc_hba*) ; 

__attribute__((used)) static void FUNC3(struct bnx2fc_hba *hba)
{
	/* Free the command manager */
	if (hba->cmd_mgr) {
		FUNC0(hba->cmd_mgr);
		hba->cmd_mgr = NULL;
	}
	FUNC2(hba->tgt_ofld_list);
	FUNC1(hba);
	FUNC2(hba);
}
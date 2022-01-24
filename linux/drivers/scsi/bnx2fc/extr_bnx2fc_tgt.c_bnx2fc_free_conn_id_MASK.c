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
typedef  size_t u32 ;
struct bnx2fc_hba {int /*<<< orphan*/  hba_lock; int /*<<< orphan*/ ** tgt_ofld_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct bnx2fc_hba *hba, u32 conn_id)
{
	/* called with hba mutex held */
	FUNC0(&hba->hba_lock);
	hba->tgt_ofld_list[conn_id] = NULL;
	FUNC1(&hba->hba_lock);
}
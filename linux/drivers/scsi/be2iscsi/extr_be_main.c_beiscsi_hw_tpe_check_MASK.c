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
struct timer_list {int dummy; } ;
struct beiscsi_hba {scalar_t__ ue2rp; int /*<<< orphan*/  recover_port; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 scalar_t__ BEISCSI_UE_DETECT_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (struct beiscsi_hba*) ; 
 struct beiscsi_hba* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hw_check ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct beiscsi_hba* phba ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct beiscsi_hba *phba = FUNC1(phba, t, hw_check);
	u32 wait;

	/* if not TPE, do nothing */
	if (!FUNC0(phba))
		return;

	/* wait default 4000ms before recovering */
	wait = 4000;
	if (phba->ue2rp > BEISCSI_UE_DETECT_INTERVAL)
		wait = phba->ue2rp - BEISCSI_UE_DETECT_INTERVAL;
	FUNC3(phba->wq, &phba->recover_port,
			   FUNC2(wait));
}
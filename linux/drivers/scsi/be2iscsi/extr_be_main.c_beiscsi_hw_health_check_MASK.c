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
struct timer_list {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  function; } ;
struct beiscsi_hba {TYPE_1__ hw_check; int /*<<< orphan*/  state; int /*<<< orphan*/  sess_work; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_HBA_UER_SUPP ; 
 int /*<<< orphan*/  BEISCSI_UE_DETECT_INTERVAL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct beiscsi_hba*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  beiscsi_hw_tpe_check ; 
 struct beiscsi_hba* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hw_check ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct beiscsi_hba* phba ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct beiscsi_hba *phba = FUNC2(phba, t, hw_check);

	FUNC1(phba);
	if (FUNC1(phba)) {
		FUNC0(phba, KERN_ERR,
			      "BM_%d : port in error: %lx\n", phba->state);
		/* sessions are no longer valid, so first fail the sessions */
		FUNC5(phba->wq, &phba->sess_work);

		/* detect UER supported */
		if (!FUNC6(BEISCSI_HBA_UER_SUPP, &phba->state))
			return;
		/* modify this timer to check TPE */
		phba->hw_check.function = beiscsi_hw_tpe_check;
	}

	FUNC3(&phba->hw_check,
		  jiffies + FUNC4(BEISCSI_UE_DETECT_INTERVAL));
}
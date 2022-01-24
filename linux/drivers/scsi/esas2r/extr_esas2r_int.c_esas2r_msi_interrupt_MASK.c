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
typedef  scalar_t__ u32 ;
struct esas2r_adapter {int /*<<< orphan*/  disable_cnt; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  MU_DOORBELL_OUT ; 
 scalar_t__ MU_INTSTAT_DRBL ; 
 scalar_t__ MU_INTSTAT_POST_OUT ; 
 int /*<<< orphan*/  MU_INT_STATUS_OUT ; 
 int /*<<< orphan*/  MU_OLIS_INT ; 
 int /*<<< orphan*/  MU_OUT_LIST_INT_STAT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct esas2r_adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct esas2r_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct esas2r_adapter*) ; 
 scalar_t__ FUNC8 (struct esas2r_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct esas2r_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 

irqreturn_t FUNC12(int irq, void *dev_id)
{
	struct esas2r_adapter *a = (struct esas2r_adapter *)dev_id;
	u32 intstat;
	u32 doorbell;

	intstat = FUNC8(a, MU_INT_STATUS_OUT);

	if (FUNC10(intstat & MU_INTSTAT_POST_OUT)) {
		/* clear the interrupt */

		FUNC9(a, MU_OUT_LIST_INT_STAT,
					    MU_OLIS_INT);
		FUNC6(a, MU_OUT_LIST_INT_STAT);

		FUNC7(a);
	}

	if (FUNC11(intstat & MU_INTSTAT_DRBL)) {
		doorbell = FUNC8(a, MU_DOORBELL_OUT);
		if (doorbell != 0)
			FUNC4(a, doorbell);
	}

	/*
	 * Work around a chip bug and force a new MSI to be sent if one is
	 * still pending.
	 */
	FUNC1(a);
	FUNC5(a);

	if (FUNC10(FUNC0(&a->disable_cnt) == 0))
		FUNC2(a);

	FUNC3(a);

	return 1;
}
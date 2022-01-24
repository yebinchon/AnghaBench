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
struct esas2r_adapter {int int_stat; int /*<<< orphan*/  disable_cnt; int /*<<< orphan*/  int_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESAS2R_INT_STS_MASK ; 
 int /*<<< orphan*/  MU_DOORBELL_OUT ; 
 int MU_INTSTAT_DRBL ; 
 int MU_INTSTAT_POST_OUT ; 
 int /*<<< orphan*/  MU_OLIS_INT ; 
 int /*<<< orphan*/  MU_OUT_LIST_INT_STAT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct esas2r_adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct esas2r_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct esas2r_adapter*) ; 
 scalar_t__ FUNC6 (struct esas2r_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct esas2r_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 

void FUNC10(struct esas2r_adapter *a)
{
	u32 doorbell;

	if (FUNC8(a->int_stat & MU_INTSTAT_POST_OUT)) {
		/* clear the interrupt */
		FUNC7(a, MU_OUT_LIST_INT_STAT,
					    MU_OLIS_INT);
		FUNC4(a, MU_OUT_LIST_INT_STAT);
		FUNC5(a);
	}

	if (FUNC9(a->int_stat & MU_INTSTAT_DRBL)) {
		doorbell = FUNC6(a, MU_DOORBELL_OUT);
		if (doorbell != 0)
			FUNC2(a, doorbell);
	}

	a->int_mask = ESAS2R_INT_STS_MASK;

	FUNC3(a);

	if (FUNC8(FUNC0(&a->disable_cnt) == 0))
		FUNC1(a);
}
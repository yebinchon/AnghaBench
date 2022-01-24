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
struct esas2r_adapter {int /*<<< orphan*/  disable_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  MU_DOORBELL_OUT ; 
 int MU_INTSTAT_DRBL ; 
 int MU_INTSTAT_POST_OUT ; 
 int /*<<< orphan*/  MU_INT_STATUS_OUT ; 
 int /*<<< orphan*/  MU_OLIS_INT ; 
 int /*<<< orphan*/  MU_OUT_LIST_INT_STAT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct esas2r_adapter*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct esas2r_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct esas2r_adapter*) ; 
 int FUNC7 (struct esas2r_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct esas2r_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(struct esas2r_adapter *a)
{
	u32 intstat;
	u32 doorbell;

	FUNC1(a);

	intstat = FUNC7(a, MU_INT_STATUS_OUT);

	if (intstat & MU_INTSTAT_POST_OUT) {
		/* clear the interrupt */

		FUNC8(a, MU_OUT_LIST_INT_STAT,
					    MU_OLIS_INT);
		FUNC5(a, MU_OUT_LIST_INT_STAT);

		FUNC6(a);
	}

	if (intstat & MU_INTSTAT_DRBL) {
		doorbell = FUNC7(a, MU_DOORBELL_OUT);
		if (doorbell != 0)
			FUNC3(a, doorbell);
	}

	FUNC4(a);

	if (FUNC0(&a->disable_cnt) == 0)
		FUNC2(a);
}
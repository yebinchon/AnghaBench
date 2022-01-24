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
typedef  scalar_t__ uint32_t ;
struct lpfc_register {int /*<<< orphan*/  word0; } ;
struct TYPE_2__ {int /*<<< orphan*/  BMBXregaddr; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; } ;
typedef  int /*<<< orphan*/  LPFC_MBOXQ_t ;

/* Variables and functions */
 int MBXERR_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct lpfc_register*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  lpfc_bmbx_rdy ; 
 int FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static int
FUNC6(struct lpfc_hba *phba, LPFC_MBOXQ_t *mboxq)
{
	uint32_t db_ready;
	unsigned long timeout;
	struct lpfc_register bmbx_reg;

	timeout = FUNC3(FUNC1(phba, mboxq)
				   * 1000) + jiffies;

	do {
		bmbx_reg.word0 = FUNC4(phba->sli4_hba.BMBXregaddr);
		db_ready = FUNC0(lpfc_bmbx_rdy, &bmbx_reg);
		if (!db_ready)
			FUNC2(2);

		if (FUNC5(jiffies, timeout))
			return MBXERR_ERROR;
	} while (!db_ready);

	return 0;
}
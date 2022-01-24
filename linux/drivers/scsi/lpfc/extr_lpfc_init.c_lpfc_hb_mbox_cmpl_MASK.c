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
struct lpfc_hba {scalar_t__ link_state; int /*<<< orphan*/  hb_tmofunc; TYPE_1__* pport; int /*<<< orphan*/  mbox_mem_pool; int /*<<< orphan*/  hbalock; scalar_t__ hb_outstanding; } ;
struct TYPE_2__ {int fc_flag; int load_flag; } ;
typedef  int /*<<< orphan*/  LPFC_MBOXQ_t ;

/* Variables and functions */
 int FC_OFFLINE_MODE ; 
 int FC_UNLOADING ; 
 scalar_t__ LPFC_HBA_ERROR ; 
 int LPFC_HB_MBOX_INTERVAL ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC5(struct lpfc_hba * phba, LPFC_MBOXQ_t * pmboxq)
{
	unsigned long drvr_flag;

	FUNC3(&phba->hbalock, drvr_flag);
	phba->hb_outstanding = 0;
	FUNC4(&phba->hbalock, drvr_flag);

	/* Check and reset heart-beat timer is necessary */
	FUNC0(pmboxq, phba->mbox_mem_pool);
	if (!(phba->pport->fc_flag & FC_OFFLINE_MODE) &&
		!(phba->link_state == LPFC_HBA_ERROR) &&
		!(phba->pport->load_flag & FC_UNLOADING))
		FUNC1(&phba->hb_tmofunc,
			  jiffies +
			  FUNC2(1000 * LPFC_HB_MBOX_INTERVAL));
	return;
}
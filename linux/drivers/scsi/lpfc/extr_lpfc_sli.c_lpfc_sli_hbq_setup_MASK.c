#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct lpfc_hba {int hbq_in_use; int hbq_count; int /*<<< orphan*/  mbox_mem_pool; int /*<<< orphan*/  link_state; TYPE_2__* hbqs; } ;
struct TYPE_14__ {int entry_count; } ;
struct TYPE_12__ {int /*<<< orphan*/  mbxStatus; int /*<<< orphan*/  mbxCommand; } ;
struct TYPE_10__ {TYPE_3__ mb; } ;
struct TYPE_13__ {TYPE_1__ u; } ;
struct TYPE_11__ {int entry_count; scalar_t__ local_hbqGetIdx; scalar_t__ hbqPutIdx; scalar_t__ next_hbqPutIdx; } ;
typedef  TYPE_3__ MAILBOX_t ;
typedef  TYPE_4__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int LOG_SLI ; 
 int LOG_VPORT ; 
 int /*<<< orphan*/  LPFC_HBA_ERROR ; 
 int /*<<< orphan*/  LPFC_INIT_MBX_CMDS ; 
 int /*<<< orphan*/  MBX_POLL ; 
 scalar_t__ MBX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,int,TYPE_7__*,int,TYPE_4__*) ; 
 TYPE_7__** lpfc_hbq_defs ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,int) ; 
 scalar_t__ FUNC4 (struct lpfc_hba*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct lpfc_hba *phba)
{
	int  hbq_count = FUNC2();
	LPFC_MBOXQ_t *pmb;
	MAILBOX_t *pmbox;
	uint32_t hbqno;
	uint32_t hbq_entry_index;

				/* Get a Mailbox buffer to setup mailbox
				 * commands for HBA initialization
				 */
	pmb = (LPFC_MBOXQ_t *) FUNC5(phba->mbox_mem_pool, GFP_KERNEL);

	if (!pmb)
		return -ENOMEM;

	pmbox = &pmb->u.mb;

	/* Initialize the struct lpfc_sli_hbq structure for each hbq */
	phba->link_state = LPFC_INIT_MBX_CMDS;
	phba->hbq_in_use = 1;

	hbq_entry_index = 0;
	for (hbqno = 0; hbqno < hbq_count; ++hbqno) {
		phba->hbqs[hbqno].next_hbqPutIdx = 0;
		phba->hbqs[hbqno].hbqPutIdx      = 0;
		phba->hbqs[hbqno].local_hbqGetIdx   = 0;
		phba->hbqs[hbqno].entry_count =
			lpfc_hbq_defs[hbqno]->entry_count;
		FUNC0(phba, hbqno, lpfc_hbq_defs[hbqno],
			hbq_entry_index, pmb);
		hbq_entry_index += phba->hbqs[hbqno].entry_count;

		if (FUNC4(phba, pmb, MBX_POLL) != MBX_SUCCESS) {
			/* Adapter failed to init, mbxCmd <cmd> CFG_RING,
			   mbxStatus <status>, ring <num> */

			FUNC1(phba, KERN_ERR,
					LOG_SLI | LOG_VPORT,
					"1805 Adapter failed to init. "
					"Data: x%x x%x x%x\n",
					pmbox->mbxCommand,
					pmbox->mbxStatus, hbqno);

			phba->link_state = LPFC_HBA_ERROR;
			FUNC6(pmb, phba->mbox_mem_pool);
			return -ENXIO;
		}
	}
	phba->hbq_count = hbq_count;

	FUNC6(pmb, phba->mbox_mem_pool);

	/* Initially populate or replenish the HBQs */
	for (hbqno = 0; hbqno < hbq_count; ++hbqno)
		FUNC3(phba, hbqno);
	return 0;
}
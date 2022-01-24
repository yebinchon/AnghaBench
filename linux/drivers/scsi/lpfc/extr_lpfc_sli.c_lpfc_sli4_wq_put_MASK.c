#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct lpfc_register {scalar_t__ word0; } ;
struct TYPE_4__ {struct lpfc_register wqe_com; } ;
union lpfc_wqe128 {TYPE_1__ generic; } ;
typedef  union lpfc_wqe {int dummy; } lpfc_wqe ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ u32 ;
struct lpfc_queue {int host_index; int entry_count; scalar_t__ hba_index; int notify_interval; int queue_id; scalar_t__ entry_size; scalar_t__ dpp_regaddr; scalar_t__ db_format; int dpp_id; int /*<<< orphan*/  db_regaddr; TYPE_3__* phba; scalar_t__ dpp_enable; int /*<<< orphan*/  WQ_posted; int /*<<< orphan*/  WQ_overflow; } ;
struct TYPE_5__ {int /*<<< orphan*/  sli_intf; } ;
struct TYPE_6__ {int sli3_options; TYPE_2__ sli4_hba; scalar_t__ cfg_enable_dpp; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ LPFC_DB_LIST_FORMAT ; 
 scalar_t__ LPFC_DB_RING_FORMAT ; 
 int LPFC_SLI4_PHWQ_ENABLED ; 
 scalar_t__ LPFC_SLI_INTF_IF_TYPE_6 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct lpfc_register*,int) ; 
 int /*<<< orphan*/  lpfc_if6_wq_db_list_fm_dpp ; 
 int /*<<< orphan*/  lpfc_if6_wq_db_list_fm_dpp_id ; 
 int /*<<< orphan*/  lpfc_if6_wq_db_list_fm_id ; 
 int /*<<< orphan*/  lpfc_if6_wq_db_list_fm_num_posted ; 
 int /*<<< orphan*/  FUNC4 (union lpfc_wqe128*,union lpfc_wqe*,scalar_t__) ; 
 union lpfc_wqe* FUNC5 (struct lpfc_queue*,int) ; 
 int /*<<< orphan*/  lpfc_sli_intf_if_type ; 
 int /*<<< orphan*/  lpfc_wq_db_list_fm_id ; 
 int /*<<< orphan*/  lpfc_wq_db_list_fm_index ; 
 int /*<<< orphan*/  lpfc_wq_db_list_fm_num_posted ; 
 int /*<<< orphan*/  lpfc_wq_db_ring_fm_id ; 
 int /*<<< orphan*/  lpfc_wq_db_ring_fm_num_posted ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  wqe_wqec ; 
 int /*<<< orphan*/  wqe_wqid ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct lpfc_queue *q, union lpfc_wqe128 *wqe)
{
	union lpfc_wqe *temp_wqe;
	struct lpfc_register doorbell;
	uint32_t host_index;
	uint32_t idx;
	uint32_t i = 0;
	uint8_t *tmp;
	u32 if_type;

	/* sanity check on queue memory */
	if (FUNC6(!q))
		return -ENOMEM;
	temp_wqe = FUNC5(q, q->host_index);

	/* If the host has not yet processed the next entry then we are done */
	idx = ((q->host_index + 1) % q->entry_count);
	if (idx == q->hba_index) {
		q->WQ_overflow++;
		return -EBUSY;
	}
	q->WQ_posted++;
	/* set consumption flag every once in a while */
	if (!((q->host_index + 1) % q->notify_interval))
		FUNC3(wqe_wqec, &wqe->generic.wqe_com, 1);
	else
		FUNC3(wqe_wqec, &wqe->generic.wqe_com, 0);
	if (q->phba->sli3_options & LPFC_SLI4_PHWQ_ENABLED)
		FUNC3(wqe_wqid, &wqe->generic.wqe_com, q->queue_id);
	FUNC4(wqe, temp_wqe, q->entry_size);
	if (q->dpp_enable && q->phba->cfg_enable_dpp) {
		/* write to DPP aperture taking advatage of Combined Writes */
		tmp = (uint8_t *)temp_wqe;
#ifdef __raw_writeq
		for (i = 0; i < q->entry_size; i += sizeof(uint64_t))
			__raw_writeq(*((uint64_t *)(tmp + i)),
					q->dpp_regaddr + i);
#else
		for (i = 0; i < q->entry_size; i += sizeof(uint32_t))
			FUNC0(*((uint32_t *)(tmp + i)),
					q->dpp_regaddr + i);
#endif
	}
	/* ensure WQE bcopy and DPP flushed before doorbell write */
	FUNC7();

	/* Update the host index before invoking device */
	host_index = q->host_index;

	q->host_index = idx;

	/* Ring Doorbell */
	doorbell.word0 = 0;
	if (q->db_format == LPFC_DB_LIST_FORMAT) {
		if (q->dpp_enable && q->phba->cfg_enable_dpp) {
			FUNC3(lpfc_if6_wq_db_list_fm_num_posted, &doorbell, 1);
			FUNC3(lpfc_if6_wq_db_list_fm_dpp, &doorbell, 1);
			FUNC3(lpfc_if6_wq_db_list_fm_dpp_id, &doorbell,
			    q->dpp_id);
			FUNC3(lpfc_if6_wq_db_list_fm_id, &doorbell,
			    q->queue_id);
		} else {
			FUNC3(lpfc_wq_db_list_fm_num_posted, &doorbell, 1);
			FUNC3(lpfc_wq_db_list_fm_id, &doorbell, q->queue_id);

			/* Leave bits <23:16> clear for if_type 6 dpp */
			if_type = FUNC2(lpfc_sli_intf_if_type,
					 &q->phba->sli4_hba.sli_intf);
			if (if_type != LPFC_SLI_INTF_IF_TYPE_6)
				FUNC3(lpfc_wq_db_list_fm_index, &doorbell,
				       host_index);
		}
	} else if (q->db_format == LPFC_DB_RING_FORMAT) {
		FUNC3(lpfc_wq_db_ring_fm_num_posted, &doorbell, 1);
		FUNC3(lpfc_wq_db_ring_fm_id, &doorbell, q->queue_id);
	} else {
		return -EINVAL;
	}
	FUNC8(doorbell.word0, q->db_regaddr);

	return 0;
}
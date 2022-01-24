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
struct lpfc_sli {int /*<<< orphan*/  mbox_tmo; } ;
struct lpfc_hba {int cfg_enable_fc4_type; int /*<<< orphan*/  eq_delay_work; int /*<<< orphan*/  hb_tmofunc; int /*<<< orphan*/  eratt_poll; int /*<<< orphan*/  fabric_block_timer; int /*<<< orphan*/  luns; int /*<<< orphan*/  devicelock; int /*<<< orphan*/  fcf_conn_rec_list; int /*<<< orphan*/  elsbuf; int /*<<< orphan*/  fabric_iocb_list; int /*<<< orphan*/  lpfc_scsi_buf_list_put; int /*<<< orphan*/  scsi_buf_list_put_lock; int /*<<< orphan*/  lpfc_scsi_buf_list_get; int /*<<< orphan*/  scsi_buf_list_get_lock; scalar_t__ nvmet_support; int /*<<< orphan*/  work_waitq; int /*<<< orphan*/  wait_4_mlo_m_q; int /*<<< orphan*/  work_list; int /*<<< orphan*/  port_list; int /*<<< orphan*/  port_list_lock; int /*<<< orphan*/  ndlp_lock; int /*<<< orphan*/  hbalock; int /*<<< orphan*/  fast_event_count; struct lpfc_sli sli; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int LPFC_ENABLE_FCP ; 
 int LPFC_ENABLE_NVME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lpfc_fabric_block_timeout ; 
 int /*<<< orphan*/  lpfc_hb_eq_delay_work ; 
 int /*<<< orphan*/  lpfc_hb_timeout ; 
 int /*<<< orphan*/  lpfc_mbox_timeout ; 
 int /*<<< orphan*/  lpfc_poll_eratt ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct lpfc_hba *phba)
{
	struct lpfc_sli *psli = &phba->sli;

	/*
	 * Driver resources common to all SLI revisions
	 */
	FUNC2(&phba->fast_event_count, 0);
	FUNC5(&phba->hbalock);

	/* Initialize ndlp management spinlock */
	FUNC5(&phba->ndlp_lock);

	/* Initialize port_list spinlock */
	FUNC5(&phba->port_list_lock);
	FUNC1(&phba->port_list);

	FUNC1(&phba->work_list);
	FUNC3(&phba->wait_4_mlo_m_q);

	/* Initialize the wait queue head for the kernel thread */
	FUNC3(&phba->work_waitq);

	FUNC4(phba, KERN_INFO, LOG_INIT,
			"1403 Protocols supported %s %s %s\n",
			((phba->cfg_enable_fc4_type & LPFC_ENABLE_FCP) ?
				"SCSI" : " "),
			((phba->cfg_enable_fc4_type & LPFC_ENABLE_NVME) ?
				"NVME" : " "),
			(phba->nvmet_support ? "NVMET" : " "));

	/* Initialize the IO buffer list used by driver for SLI3 SCSI */
	FUNC5(&phba->scsi_buf_list_get_lock);
	FUNC1(&phba->lpfc_scsi_buf_list_get);
	FUNC5(&phba->scsi_buf_list_put_lock);
	FUNC1(&phba->lpfc_scsi_buf_list_put);

	/* Initialize the fabric iocb list */
	FUNC1(&phba->fabric_iocb_list);

	/* Initialize list to save ELS buffers */
	FUNC1(&phba->elsbuf);

	/* Initialize FCF connection rec list */
	FUNC1(&phba->fcf_conn_rec_list);

	/* Initialize OAS configuration list */
	FUNC5(&phba->devicelock);
	FUNC1(&phba->luns);

	/* MBOX heartbeat timer */
	FUNC6(&psli->mbox_tmo, lpfc_mbox_timeout, 0);
	/* Fabric block timer */
	FUNC6(&phba->fabric_block_timer, lpfc_fabric_block_timeout, 0);
	/* EA polling mode timer */
	FUNC6(&phba->eratt_poll, lpfc_poll_eratt, 0);
	/* Heartbeat timer */
	FUNC6(&phba->hb_tmofunc, lpfc_hb_timeout, 0);

	FUNC0(&phba->eq_delay_work, lpfc_hb_eq_delay_work);

	return 0;
}
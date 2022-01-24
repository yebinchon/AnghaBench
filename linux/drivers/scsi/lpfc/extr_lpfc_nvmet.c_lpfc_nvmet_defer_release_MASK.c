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
struct lpfc_nvmet_rcv_ctx {int flag; int /*<<< orphan*/  list; int /*<<< orphan*/  oxid; int /*<<< orphan*/  ctxlock; } ;
struct TYPE_2__ {int /*<<< orphan*/  abts_nvmet_buf_list_lock; int /*<<< orphan*/  lpfc_abts_nvmet_ctx_list; int /*<<< orphan*/  t_active_list_lock; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_NVME_ABTS ; 
 int LPFC_NVMET_CTX_RLS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct lpfc_hba *phba, struct lpfc_nvmet_rcv_ctx *ctxp)
{
	FUNC2(&ctxp->ctxlock);

	FUNC3(phba, KERN_INFO, LOG_NVME_ABTS,
			"6313 NVMET Defer ctx release oxid x%x flg x%x\n",
			ctxp->oxid, ctxp->flag);

	if (ctxp->flag & LPFC_NVMET_CTX_RLS)
		return;

	ctxp->flag |= LPFC_NVMET_CTX_RLS;
	FUNC4(&phba->sli4_hba.t_active_list_lock);
	FUNC1(&ctxp->list);
	FUNC5(&phba->sli4_hba.t_active_list_lock);
	FUNC4(&phba->sli4_hba.abts_nvmet_buf_list_lock);
	FUNC0(&ctxp->list, &phba->sli4_hba.lpfc_abts_nvmet_ctx_list);
	FUNC5(&phba->sli4_hba.abts_nvmet_buf_list_lock);
}
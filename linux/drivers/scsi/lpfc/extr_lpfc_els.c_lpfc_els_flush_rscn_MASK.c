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
struct lpfc_vport {int fc_rscn_flush; int fc_rscn_id_cnt; int fc_flag; int /*<<< orphan*/ ** fc_rscn_id_list; struct lpfc_hba* phba; } ;
struct lpfc_hba {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int FC_RSCN_DISCOVERY ; 
 int FC_RSCN_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC2 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct lpfc_vport *vport)
{
	struct Scsi_Host *shost = FUNC2(vport);
	struct lpfc_hba  *phba = vport->phba;
	int i;

	FUNC3(shost->host_lock);
	if (vport->fc_rscn_flush) {
		/* Another thread is walking fc_rscn_id_list on this vport */
		FUNC4(shost->host_lock);
		return;
	}
	/* Indicate we are walking lpfc_els_flush_rscn on this vport */
	vport->fc_rscn_flush = 1;
	FUNC4(shost->host_lock);

	for (i = 0; i < vport->fc_rscn_id_cnt; i++) {
		FUNC1(phba, vport->fc_rscn_id_list[i]);
		vport->fc_rscn_id_list[i] = NULL;
	}
	FUNC3(shost->host_lock);
	vport->fc_rscn_id_cnt = 0;
	vport->fc_flag &= ~(FC_RSCN_MODE | FC_RSCN_DISCOVERY);
	FUNC4(shost->host_lock);
	FUNC0(vport);
	/* Indicate we are done walking this fc_rscn_id_list */
	vport->fc_rscn_flush = 0;
}
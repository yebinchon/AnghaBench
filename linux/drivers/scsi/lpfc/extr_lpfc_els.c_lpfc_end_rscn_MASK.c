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
struct lpfc_vport {int fc_flag; scalar_t__ fc_rscn_id_cnt; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int FC_RSCN_DISCOVERY ; 
 int FC_RSCN_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*) ; 
 struct Scsi_Host* FUNC1 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct lpfc_vport *vport)
{
	struct Scsi_Host *shost = FUNC1(vport);

	if (vport->fc_flag & FC_RSCN_MODE) {
		/*
		 * Check to see if more RSCNs came in while we were
		 * processing this one.
		 */
		if (vport->fc_rscn_id_cnt ||
		    (vport->fc_flag & FC_RSCN_DISCOVERY) != 0)
			FUNC0(vport);
		else {
			FUNC2(shost->host_lock);
			vport->fc_flag &= ~FC_RSCN_MODE;
			FUNC3(shost->host_lock);
		}
	}
}
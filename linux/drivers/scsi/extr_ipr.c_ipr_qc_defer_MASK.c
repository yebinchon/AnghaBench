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
struct ipr_sata_port {struct ipr_ioa_cfg* ioa_cfg; } ;
struct ipr_ioa_cfg {struct ipr_hrr_queue* hrrq; } ;
struct ipr_hrr_queue {int ioa_is_dead; int /*<<< orphan*/  _lock; int /*<<< orphan*/  allow_cmds; } ;
struct ipr_cmnd {int dummy; } ;
struct ata_queued_cmd {struct ipr_cmnd* lldd_task; struct ata_port* ap; } ;
struct ata_port {struct ipr_sata_port* private_data; } ;

/* Variables and functions */
 int ATA_DEFER_LINK ; 
 struct ipr_cmnd* FUNC0 (struct ipr_hrr_queue*) ; 
 int FUNC1 (struct ipr_ioa_cfg*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct ata_queued_cmd *qc)
{
	struct ata_port *ap = qc->ap;
	struct ipr_sata_port *sata_port = ap->private_data;
	struct ipr_ioa_cfg *ioa_cfg = sata_port->ioa_cfg;
	struct ipr_cmnd *ipr_cmd;
	struct ipr_hrr_queue *hrrq;
	int hrrq_id;

	hrrq_id = FUNC1(ioa_cfg);
	hrrq = &ioa_cfg->hrrq[hrrq_id];

	qc->lldd_task = NULL;
	FUNC2(&hrrq->_lock);
	if (FUNC4(hrrq->ioa_is_dead)) {
		FUNC3(&hrrq->_lock);
		return 0;
	}

	if (FUNC4(!hrrq->allow_cmds)) {
		FUNC3(&hrrq->_lock);
		return ATA_DEFER_LINK;
	}

	ipr_cmd = FUNC0(hrrq);
	if (ipr_cmd == NULL) {
		FUNC3(&hrrq->_lock);
		return ATA_DEFER_LINK;
	}

	qc->lldd_task = ipr_cmd;
	FUNC3(&hrrq->_lock);
	return 0;
}
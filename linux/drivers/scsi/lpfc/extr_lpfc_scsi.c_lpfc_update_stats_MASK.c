#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {scalar_t__ result; TYPE_1__* device; } ;
struct lpfc_vport {scalar_t__ stat_data_blocked; int /*<<< orphan*/  stat_data_enabled; } ;
struct lpfc_rport_data {struct lpfc_nodelist* pnode; } ;
struct lpfc_nodelist {TYPE_2__* lat_data; } ;
struct lpfc_io_buf {struct lpfc_rport_data* rdata; scalar_t__ start_time; struct scsi_cmnd* pCmd; } ;
struct lpfc_hba {scalar_t__ bucket_type; unsigned long bucket_step; int bucket_base; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; scalar_t__ hostdata; } ;
struct TYPE_4__ {int /*<<< orphan*/  cmd_count; } ;
struct TYPE_3__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 scalar_t__ LPFC_LINEAR_BUCKET ; 
 int LPFC_MAX_BUCKET_COUNT ; 
 scalar_t__ LPFC_NO_BUCKET ; 
 scalar_t__ jiffies ; 
 unsigned long FUNC0 (long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void
FUNC3(struct lpfc_hba *phba, struct lpfc_io_buf *lpfc_cmd)
{
	struct lpfc_rport_data *rdata;
	struct lpfc_nodelist *pnode;
	struct scsi_cmnd *cmd = lpfc_cmd->pCmd;
	unsigned long flags;
	struct Scsi_Host  *shost = cmd->device->host;
	struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
	unsigned long latency;
	int i;

	if (!vport->stat_data_enabled ||
	    vport->stat_data_blocked ||
	    (cmd->result))
		return;

	latency = FUNC0((long)jiffies - (long)lpfc_cmd->start_time);
	rdata = lpfc_cmd->rdata;
	pnode = rdata->pnode;

	FUNC1(shost->host_lock, flags);
	if (!pnode ||
	    !pnode->lat_data ||
	    (phba->bucket_type == LPFC_NO_BUCKET)) {
		FUNC2(shost->host_lock, flags);
		return;
	}

	if (phba->bucket_type == LPFC_LINEAR_BUCKET) {
		i = (latency + phba->bucket_step - 1 - phba->bucket_base)/
			phba->bucket_step;
		/* check array subscript bounds */
		if (i < 0)
			i = 0;
		else if (i >= LPFC_MAX_BUCKET_COUNT)
			i = LPFC_MAX_BUCKET_COUNT - 1;
	} else {
		for (i = 0; i < LPFC_MAX_BUCKET_COUNT-1; i++)
			if (latency <= (phba->bucket_base +
				((1<<i)*phba->bucket_step)))
				break;
	}

	pnode->lat_data[i].cmd_count++;
	FUNC2(shost->host_lock, flags);
}
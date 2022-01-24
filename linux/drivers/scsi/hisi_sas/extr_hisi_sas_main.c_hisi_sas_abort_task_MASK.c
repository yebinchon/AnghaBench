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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct scsi_lun {int /*<<< orphan*/  scsi_lun; } ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct sas_task {int task_state_flags; int task_proto; struct hisi_sas_slot* lldd_task; struct domain_device* dev; struct scsi_cmnd* uldd_task; int /*<<< orphan*/  task_state_lock; } ;
struct hisi_sas_tmf_task {int /*<<< orphan*/  tag_of_task_to_be_managed; int /*<<< orphan*/  tmf; } ;
struct hisi_sas_slot {size_t dlvry_queue; int /*<<< orphan*/ * task; int /*<<< orphan*/  idx; } ;
struct hisi_sas_device {int dummy; } ;
struct hisi_sas_cq {int /*<<< orphan*/  tasklet; } ;
struct hisi_hba {struct hisi_sas_cq* cq; struct device* dev; } ;
struct domain_device {scalar_t__ dev_type; struct hisi_sas_device* lldd_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lun; } ;

/* Variables and functions */
 int /*<<< orphan*/  HISI_SAS_INT_ABT_CMD ; 
 int /*<<< orphan*/  HISI_SAS_INT_ABT_DEV ; 
 int SAS_PROTOCOL_SATA ; 
 int SAS_PROTOCOL_SMP ; 
 int SAS_PROTOCOL_SSP ; 
 int SAS_PROTOCOL_STP ; 
 scalar_t__ SAS_SATA_DEV ; 
 int SAS_TASK_STATE_ABORTED ; 
 int SAS_TASK_STATE_DONE ; 
 int /*<<< orphan*/  TMF_ABORT_TASK ; 
 int TMF_RESP_FUNC_COMPLETE ; 
 int TMF_RESP_FUNC_FAILED ; 
 int TMF_RESP_FUNC_SUCC ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct hisi_hba* FUNC2 (struct domain_device*) ; 
 int FUNC3 (struct domain_device*,int /*<<< orphan*/ ,struct hisi_sas_tmf_task*) ; 
 int /*<<< orphan*/  FUNC4 (struct hisi_hba*,struct domain_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct hisi_hba*,struct sas_task*,struct hisi_sas_slot*) ; 
 int FUNC6 (struct hisi_hba*,struct domain_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct scsi_lun*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct sas_task *task)
{
	struct scsi_lun lun;
	struct hisi_sas_tmf_task tmf_task;
	struct domain_device *device = task->dev;
	struct hisi_sas_device *sas_dev = device->lldd_dev;
	struct hisi_hba *hisi_hba;
	struct device *dev;
	int rc = TMF_RESP_FUNC_FAILED;
	unsigned long flags;

	if (!sas_dev)
		return TMF_RESP_FUNC_FAILED;

	hisi_hba = FUNC2(task->dev);
	dev = hisi_hba->dev;

	FUNC9(&task->task_state_lock, flags);
	if (task->task_state_flags & SAS_TASK_STATE_DONE) {
		struct hisi_sas_slot *slot = task->lldd_task;
		struct hisi_sas_cq *cq;

		if (slot) {
			/*
			 * flush tasklet to avoid free'ing task
			 * before using task in IO completion
			 */
			cq = &hisi_hba->cq[slot->dlvry_queue];
			FUNC11(&cq->tasklet);
		}
		FUNC10(&task->task_state_lock, flags);
		rc = TMF_RESP_FUNC_COMPLETE;
		goto out;
	}
	task->task_state_flags |= SAS_TASK_STATE_ABORTED;
	FUNC10(&task->task_state_lock, flags);

	if (task->lldd_task && task->task_proto & SAS_PROTOCOL_SSP) {
		struct scsi_cmnd *cmnd = task->uldd_task;
		struct hisi_sas_slot *slot = task->lldd_task;
		u16 tag = slot->idx;
		int rc2;

		FUNC8(cmnd->device->lun, &lun);
		tmf_task.tmf = TMF_ABORT_TASK;
		tmf_task.tag_of_task_to_be_managed = tag;

		rc = FUNC3(task->dev, lun.scsi_lun,
						  &tmf_task);

		rc2 = FUNC6(hisi_hba, device,
						   HISI_SAS_INT_ABT_CMD, tag);
		if (rc2 < 0) {
			FUNC0(dev, "abort task: internal abort (%d)\n", rc2);
			return TMF_RESP_FUNC_FAILED;
		}

		/*
		 * If the TMF finds that the IO is not in the device and also
		 * the internal abort does not succeed, then it is safe to
		 * free the slot.
		 * Note: if the internal abort succeeds then the slot
		 * will have already been completed
		 */
		if (rc == TMF_RESP_FUNC_COMPLETE && rc2 != TMF_RESP_FUNC_SUCC) {
			if (task->lldd_task)
				FUNC5(hisi_hba, task, slot);
		}
	} else if (task->task_proto & SAS_PROTOCOL_SATA ||
		task->task_proto & SAS_PROTOCOL_STP) {
		if (task->dev->dev_type == SAS_SATA_DEV) {
			rc = FUNC6(hisi_hba, device,
							  HISI_SAS_INT_ABT_DEV,
							  0);
			if (rc < 0) {
				FUNC0(dev, "abort task: internal abort failed\n");
				goto out;
			}
			FUNC4(hisi_hba, device);
			rc = FUNC7(device);
		}
	} else if (task->lldd_task && task->task_proto & SAS_PROTOCOL_SMP) {
		/* SMP */
		struct hisi_sas_slot *slot = task->lldd_task;
		u32 tag = slot->idx;
		struct hisi_sas_cq *cq = &hisi_hba->cq[slot->dlvry_queue];

		rc = FUNC6(hisi_hba, device,
						  HISI_SAS_INT_ABT_CMD, tag);
		if (((rc < 0) || (rc == TMF_RESP_FUNC_FAILED)) &&
					task->lldd_task) {
			/*
			 * flush tasklet to avoid free'ing task
			 * before using task in IO completion
			 */
			FUNC11(&cq->tasklet);
			slot->task = NULL;
		}
	}

out:
	if (rc != TMF_RESP_FUNC_COMPLETE)
		FUNC1(dev, "abort task: rc=%d\n", rc);
	return rc;
}
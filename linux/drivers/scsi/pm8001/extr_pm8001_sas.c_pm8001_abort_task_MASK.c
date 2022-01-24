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
typedef  int u32 ;
struct scsi_lun {int /*<<< orphan*/  scsi_lun; } ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct sas_task_slow {int /*<<< orphan*/  completion; } ;
struct sas_task {int task_state_flags; int task_proto; int /*<<< orphan*/  task_state_lock; struct sas_task_slow* slow_task; struct scsi_cmnd* uldd_task; struct domain_device* dev; int /*<<< orphan*/  lldd_task; } ;
struct pm8001_tmf_task {int tag_of_task_to_be_managed; int /*<<< orphan*/  tmf; } ;
struct pm8001_phy {int reset_success; scalar_t__ port_reset_status; int /*<<< orphan*/ * reset_completion; int /*<<< orphan*/ * enable_completion; } ;
struct pm8001_hba_info {scalar_t__ chip_id; struct pm8001_phy* phy; } ;
struct pm8001_device {int attached_phy; int /*<<< orphan*/  sas_device; int /*<<< orphan*/ * setds_completion; } ;
struct domain_device {struct pm8001_device* lldd_dev; } ;
struct TYPE_4__ {int (* phy_ctl_req ) (struct pm8001_hba_info*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_dev_state_req ) (struct pm8001_hba_info*,struct pm8001_device*,int) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  lun; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int HZ ; 
 int /*<<< orphan*/  PHY_HARD_RESET ; 
 TYPE_2__* PM8001_CHIP_DISP ; 
 int /*<<< orphan*/  FUNC1 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int PM8001_TASK_TIMEOUT ; 
 int SAS_PROTOCOL_SATA ; 
 int SAS_PROTOCOL_SMP ; 
 int SAS_PROTOCOL_SSP ; 
 int SAS_PROTOCOL_STP ; 
 int SAS_TASK_STATE_ABORTED ; 
 int SAS_TASK_STATE_DONE ; 
 int /*<<< orphan*/  TMF_ABORT_TASK ; 
 int TMF_RESP_FUNC_COMPLETE ; 
 int TMF_RESP_FUNC_FAILED ; 
 scalar_t__ chip_8006 ; 
 int /*<<< orphan*/  completion ; 
 int /*<<< orphan*/  completion_reset ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct scsi_lun*) ; 
 int /*<<< orphan*/  FUNC4 (struct domain_device*) ; 
 int FUNC5 (struct pm8001_hba_info*,struct pm8001_device*,int /*<<< orphan*/ ,int,int) ; 
 struct pm8001_hba_info* FUNC6 (struct domain_device*) ; 
 int FUNC7 (struct sas_task*,int*) ; 
 int FUNC8 (struct domain_device*,int /*<<< orphan*/ ,struct pm8001_tmf_task*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct pm8001_hba_info*,struct pm8001_device*,int) ; 
 int FUNC14 (struct pm8001_hba_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pm8001_hba_info*,struct pm8001_device*,int) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *,int) ; 

int FUNC19(struct sas_task *task)
{
	unsigned long flags;
	u32 tag;
	struct domain_device *dev ;
	struct pm8001_hba_info *pm8001_ha;
	struct scsi_lun lun;
	struct pm8001_device *pm8001_dev;
	struct pm8001_tmf_task tmf_task;
	int rc = TMF_RESP_FUNC_FAILED, ret;
	u32 phy_id;
	struct sas_task_slow slow_task;
	if (FUNC16(!task || !task->lldd_task || !task->dev))
		return TMF_RESP_FUNC_FAILED;
	dev = task->dev;
	pm8001_dev = dev->lldd_dev;
	pm8001_ha = FUNC6(dev);
	phy_id = pm8001_dev->attached_phy;
	rc = FUNC7(task, &tag);
	if (rc == 0) {
		FUNC9("no tag for task:%p\n", task);
		return TMF_RESP_FUNC_FAILED;
	}
	FUNC11(&task->task_state_lock, flags);
	if (task->task_state_flags & SAS_TASK_STATE_DONE) {
		FUNC12(&task->task_state_lock, flags);
		return TMF_RESP_FUNC_COMPLETE;
	}
	task->task_state_flags |= SAS_TASK_STATE_ABORTED;
	if (task->slow_task == NULL) {
		FUNC2(&slow_task.completion);
		task->slow_task = &slow_task;
	}
	FUNC12(&task->task_state_lock, flags);
	if (task->task_proto & SAS_PROTOCOL_SSP) {
		struct scsi_cmnd *cmnd = task->uldd_task;
		FUNC3(cmnd->device->lun, &lun);
		tmf_task.tmf = TMF_ABORT_TASK;
		tmf_task.tag_of_task_to_be_managed = tag;
		rc = FUNC8(dev, lun.scsi_lun, &tmf_task);
		FUNC5(pm8001_ha, pm8001_dev,
			pm8001_dev->sas_device, 0, tag);
	} else if (task->task_proto & SAS_PROTOCOL_SATA ||
		task->task_proto & SAS_PROTOCOL_STP) {
		if (pm8001_ha->chip_id == chip_8006) {
			FUNC0(completion_reset);
			FUNC0(completion);
			struct pm8001_phy *phy = pm8001_ha->phy + phy_id;

			/* 1. Set Device state as Recovery */
			pm8001_dev->setds_completion = &completion;
			PM8001_CHIP_DISP->set_dev_state_req(pm8001_ha,
				pm8001_dev, 0x03);
			FUNC17(&completion);

			/* 2. Send Phy Control Hard Reset */
			FUNC10(&completion);
			phy->reset_success = false;
			phy->enable_completion = &completion;
			phy->reset_completion = &completion_reset;
			ret = PM8001_CHIP_DISP->phy_ctl_req(pm8001_ha, phy_id,
				PHY_HARD_RESET);
			if (ret)
				goto out;
			FUNC1(pm8001_ha,
				FUNC9("Waiting for local phy ctl\n"));
			FUNC17(&completion);
			if (!phy->reset_success)
				goto out;

			/* 3. Wait for Port Reset complete / Port reset TMO */
			FUNC1(pm8001_ha,
				FUNC9("Waiting for Port reset\n"));
			FUNC17(&completion_reset);
			if (phy->port_reset_status) {
				FUNC4(dev);
				goto out;
			}

			/*
			 * 4. SATA Abort ALL
			 * we wait for the task to be aborted so that the task
			 * is removed from the ccb. on success the caller is
			 * going to free the task.
			 */
			ret = FUNC5(pm8001_ha,
				pm8001_dev, pm8001_dev->sas_device, 1, tag);
			if (ret)
				goto out;
			ret = FUNC18(
				&task->slow_task->completion,
				PM8001_TASK_TIMEOUT * HZ);
			if (!ret)
				goto out;

			/* 5. Set Device State as Operational */
			FUNC10(&completion);
			pm8001_dev->setds_completion = &completion;
			PM8001_CHIP_DISP->set_dev_state_req(pm8001_ha,
				pm8001_dev, 0x01);
			FUNC17(&completion);
		} else {
			rc = FUNC5(pm8001_ha,
				pm8001_dev, pm8001_dev->sas_device, 0, tag);
		}
		rc = TMF_RESP_FUNC_COMPLETE;
	} else if (task->task_proto & SAS_PROTOCOL_SMP) {
		/* SMP */
		rc = FUNC5(pm8001_ha, pm8001_dev,
			pm8001_dev->sas_device, 0, tag);

	}
out:
	FUNC11(&task->task_state_lock, flags);
	if (task->slow_task == &slow_task)
		task->slow_task = NULL;
	FUNC12(&task->task_state_lock, flags);
	if (rc != TMF_RESP_FUNC_COMPLETE)
		FUNC9("rc= %d\n", rc);
	return rc;
}
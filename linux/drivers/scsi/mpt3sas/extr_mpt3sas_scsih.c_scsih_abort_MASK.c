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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct scsiio_tracker {int cb_idx; int /*<<< orphan*/  msix_io; int /*<<< orphan*/  smid; } ;
struct scsi_cmnd {int result; TYPE_2__* device; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct _pcie_device {int /*<<< orphan*/  device_info; } ;
struct MPT3SAS_DEVICE {TYPE_1__* sas_target; } ;
struct MPT3SAS_ADAPTER {int nvme_abort_timeout; int /*<<< orphan*/  tm_custom_handling; scalar_t__ remove_host; } ;
struct TYPE_4__ {int /*<<< orphan*/  lun; struct MPT3SAS_DEVICE* hostdata; int /*<<< orphan*/  host; } ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int DID_NO_CONNECT ; 
 int DID_RESET ; 
 int FAILED ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  MPI2_SCSITASKMGMT_TASKTYPE_ABORT_TASK ; 
 int MPT_TARGET_FLAGS_RAID_COMPONENT ; 
 int MPT_TARGET_FLAGS_VOLUME ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*,struct scsi_cmnd*) ; 
 struct _pcie_device* FUNC1 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct MPT3SAS_ADAPTER*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct _pcie_device*) ; 
 struct scsiio_tracker* FUNC6 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*,char*,...) ; 
 struct MPT3SAS_ADAPTER* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_cmnd*) ; 

__attribute__((used)) static int
FUNC10(struct scsi_cmnd *scmd)
{
	struct MPT3SAS_ADAPTER *ioc = FUNC8(scmd->device->host);
	struct MPT3SAS_DEVICE *sas_device_priv_data;
	struct scsiio_tracker *st = FUNC6(scmd);
	u16 handle;
	int r;

	u8 timeout = 30;
	struct _pcie_device *pcie_device = NULL;
	FUNC7(KERN_INFO, scmd->device,
		"attempting task abort! scmd(%p)\n", scmd);
	FUNC0(ioc, scmd);

	sas_device_priv_data = scmd->device->hostdata;
	if (!sas_device_priv_data || !sas_device_priv_data->sas_target ||
	    ioc->remove_host) {
		FUNC7(KERN_INFO, scmd->device,
			"device been deleted! scmd(%p)\n", scmd);
		scmd->result = DID_NO_CONNECT << 16;
		scmd->scsi_done(scmd);
		r = SUCCESS;
		goto out;
	}

	/* check for completed command */
	if (st == NULL || st->cb_idx == 0xFF) {
		scmd->result = DID_RESET << 16;
		r = SUCCESS;
		goto out;
	}

	/* for hidden raid components and volumes this is not supported */
	if (sas_device_priv_data->sas_target->flags &
	    MPT_TARGET_FLAGS_RAID_COMPONENT ||
	    sas_device_priv_data->sas_target->flags & MPT_TARGET_FLAGS_VOLUME) {
		scmd->result = DID_RESET << 16;
		r = FAILED;
		goto out;
	}

	FUNC2(ioc);

	handle = sas_device_priv_data->sas_target->handle;
	pcie_device = FUNC1(ioc, handle);
	if (pcie_device && (!ioc->tm_custom_handling) &&
	    (!(FUNC3(pcie_device->device_info))))
		timeout = ioc->nvme_abort_timeout;
	r = FUNC4(ioc, handle, scmd->device->lun,
		MPI2_SCSITASKMGMT_TASKTYPE_ABORT_TASK,
		st->smid, st->msix_io, timeout, 0);
	/* Command must be cleared after abort */
	if (r == SUCCESS && st->cb_idx != 0xFF)
		r = FAILED;
 out:
	FUNC7(KERN_INFO, scmd->device, "task abort: %s scmd(%p)\n",
	    ((r == SUCCESS) ? "SUCCESS" : "FAILED"), scmd);
	if (pcie_device)
		FUNC5(pcie_device);
	return r;
}
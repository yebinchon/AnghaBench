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
typedef  scalar_t__ u16 ;
struct scsi_target {int /*<<< orphan*/  target_busy; struct MPT3SAS_TARGET* hostdata; } ;
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;TYPE_1__* device; } ;
struct _sas_device {scalar_t__ volume_handle; } ;
struct _pcie_device {int reset_timeout; int /*<<< orphan*/  device_info; } ;
struct MPT3SAS_TARGET {int dummy; } ;
struct MPT3SAS_DEVICE {TYPE_2__* sas_target; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  tm_custom_handling; scalar_t__ remove_host; } ;
struct TYPE_4__ {int flags; scalar_t__ handle; } ;
struct TYPE_3__ {struct MPT3SAS_DEVICE* hostdata; struct scsi_target* sdev_target; int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int DID_NO_CONNECT ; 
 int DID_RESET ; 
 int FAILED ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int MPI26_SCSITASKMGMT_MSGFLAGS_PROTOCOL_LVL_RST_PCIE ; 
 int MPI2_SCSITASKMGMT_MSGFLAGS_LINK_RESET ; 
 int /*<<< orphan*/  MPI2_SCSITASKMGMT_TASKTYPE_TARGET_RESET ; 
 int MPT_TARGET_FLAGS_RAID_COMPONENT ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*,struct scsi_cmnd*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct _pcie_device* FUNC2 (struct MPT3SAS_ADAPTER*,scalar_t__) ; 
 struct _sas_device* FUNC3 (struct MPT3SAS_ADAPTER*,struct MPT3SAS_TARGET*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct MPT3SAS_ADAPTER*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct _pcie_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct _sas_device*) ; 
 struct MPT3SAS_ADAPTER* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct scsi_target*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_cmnd*) ; 

__attribute__((used)) static int
FUNC11(struct scsi_cmnd *scmd)
{
	struct MPT3SAS_ADAPTER *ioc = FUNC8(scmd->device->host);
	struct MPT3SAS_DEVICE *sas_device_priv_data;
	struct _sas_device *sas_device = NULL;
	struct _pcie_device *pcie_device = NULL;
	u16	handle;
	u8	tr_method = 0;
	u8	tr_timeout = 30;
	int r;
	struct scsi_target *starget = scmd->device->sdev_target;
	struct MPT3SAS_TARGET *target_priv_data = starget->hostdata;

	FUNC9(KERN_INFO, starget, "attempting target reset! scmd(%p)\n",
		scmd);
	FUNC0(ioc, scmd);

	sas_device_priv_data = scmd->device->hostdata;
	if (!sas_device_priv_data || !sas_device_priv_data->sas_target ||
	    ioc->remove_host) {
		FUNC9(KERN_INFO, starget, "target been deleted! scmd(%p)\n",
			scmd);
		scmd->result = DID_NO_CONNECT << 16;
		scmd->scsi_done(scmd);
		r = SUCCESS;
		goto out;
	}

	/* for hidden raid components obtain the volume_handle */
	handle = 0;
	if (sas_device_priv_data->sas_target->flags &
	    MPT_TARGET_FLAGS_RAID_COMPONENT) {
		sas_device = FUNC3(ioc,
				target_priv_data);
		if (sas_device)
			handle = sas_device->volume_handle;
	} else
		handle = sas_device_priv_data->sas_target->handle;

	if (!handle) {
		scmd->result = DID_RESET << 16;
		r = FAILED;
		goto out;
	}

	pcie_device = FUNC2(ioc, handle);

	if (pcie_device && (!ioc->tm_custom_handling) &&
	    (!(FUNC4(pcie_device->device_info)))) {
		tr_timeout = pcie_device->reset_timeout;
		tr_method = MPI26_SCSITASKMGMT_MSGFLAGS_PROTOCOL_LVL_RST_PCIE;
	} else
		tr_method = MPI2_SCSITASKMGMT_MSGFLAGS_LINK_RESET;
	r = FUNC5(ioc, handle, 0,
		MPI2_SCSITASKMGMT_TASKTYPE_TARGET_RESET, 0, 0,
	    tr_timeout, tr_method);
	/* Check for busy commands after reset */
	if (r == SUCCESS && FUNC1(&starget->target_busy))
		r = FAILED;
 out:
	FUNC9(KERN_INFO, starget, "target reset: %s scmd(%p)\n",
	    ((r == SUCCESS) ? "SUCCESS" : "FAILED"), scmd);

	if (sas_device)
		FUNC7(sas_device);
	if (pcie_device)
		FUNC6(pcie_device);
	return r;
}
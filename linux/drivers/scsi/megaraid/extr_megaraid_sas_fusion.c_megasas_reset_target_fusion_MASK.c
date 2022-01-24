#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct scsi_cmnd {int result; TYPE_4__* device; } ;
struct megasas_instance {int /*<<< orphan*/  reset_mutex; TYPE_3__* host; TYPE_2__* pdev; int /*<<< orphan*/  adprecovery; } ;
struct MR_PRIV_DEVICE {int tm_busy; int /*<<< orphan*/  is_tm_capable; } ;
struct TYPE_9__ {int /*<<< orphan*/  id; int /*<<< orphan*/  channel; TYPE_1__* host; struct MR_PRIV_DEVICE* hostdata; } ;
struct TYPE_8__ {int /*<<< orphan*/  host_no; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int DID_NO_CONNECT ; 
 int FAILED ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_NOTICE ; 
 scalar_t__ MEGASAS_HBA_OPERATIONAL ; 
 int /*<<< orphan*/  MPI2_SCSITASKMGMT_TASKTYPE_TARGET_RESET ; 
 int SUCCESS ; 
 scalar_t__ ULONG_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int FUNC3 (struct megasas_instance*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct MR_PRIV_DEVICE*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_4__*,char*,...) ; 

int FUNC8(struct scsi_cmnd *scmd)
{

	struct megasas_instance *instance;
	int ret = FAILED;
	u16 devhandle;
	struct MR_PRIV_DEVICE *mr_device_priv_data;
	mr_device_priv_data = scmd->device->hostdata;

	instance = (struct megasas_instance *)scmd->device->host->hostdata;

	if (FUNC0(&instance->adprecovery) != MEGASAS_HBA_OPERATIONAL) {
		FUNC1(&instance->pdev->dev, "Controller is not OPERATIONAL,"
		"SCSI host:%d\n", instance->host->host_no);
		ret = FAILED;
		return ret;
	}

	if (!mr_device_priv_data) {
		FUNC7(KERN_INFO, scmd->device,
			    "device been deleted! scmd: (0x%p)\n", scmd);
		scmd->result = DID_NO_CONNECT << 16;
		ret = SUCCESS;
		goto out;
	}

	if (!mr_device_priv_data->is_tm_capable) {
		ret = FAILED;
		goto out;
	}

	FUNC4(&instance->reset_mutex);
	devhandle = FUNC2(scmd->device);

	if (devhandle == (u16)ULONG_MAX) {
		ret = SUCCESS;
		FUNC7(KERN_INFO, scmd->device,
			"target reset issued for invalid devhandle\n");
		FUNC5(&instance->reset_mutex);
		goto out;
	}

	FUNC7(KERN_INFO, scmd->device,
		"attempting target reset! scmd(0x%p) tm_dev_handle: 0x%x\n",
		scmd, devhandle);
	mr_device_priv_data->tm_busy = 1;
	ret = FUNC3(instance, devhandle,
			scmd->device->channel, scmd->device->id, 0,
			MPI2_SCSITASKMGMT_TASKTYPE_TARGET_RESET,
			mr_device_priv_data);
	mr_device_priv_data->tm_busy = 0;
	FUNC5(&instance->reset_mutex);
	FUNC6(KERN_NOTICE, scmd, "target reset %s!!\n",
		(ret == SUCCESS) ? "SUCCESS" : "FAILED");

out:
	return ret;
}
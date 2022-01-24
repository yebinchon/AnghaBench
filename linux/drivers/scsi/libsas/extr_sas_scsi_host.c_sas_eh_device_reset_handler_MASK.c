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
struct scsi_lun {int /*<<< orphan*/  scsi_lun; } ;
struct scsi_cmnd {TYPE_2__* device; } ;
struct sas_internal {TYPE_1__* dft; } ;
struct domain_device {int dummy; } ;
struct Scsi_Host {scalar_t__ ehandler; int /*<<< orphan*/  transportt; } ;
struct TYPE_4__ {int /*<<< orphan*/  lun; struct Scsi_Host* host; } ;
struct TYPE_3__ {int (* lldd_lu_reset ) (struct domain_device*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FAILED ; 
 int /*<<< orphan*/  SAS_DEV_LU_RESET ; 
 int SUCCESS ; 
 int TMF_RESP_FUNC_COMPLETE ; 
 int TMF_RESP_FUNC_SUCC ; 
 struct domain_device* FUNC0 (struct scsi_cmnd*) ; 
 scalar_t__ current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scsi_lun*) ; 
 int FUNC2 (struct domain_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct domain_device*,int /*<<< orphan*/ ) ; 
 struct sas_internal* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct scsi_cmnd *cmd)
{
	int res;
	struct scsi_lun lun;
	struct Scsi_Host *host = cmd->device->host;
	struct domain_device *dev = FUNC0(cmd);
	struct sas_internal *i = FUNC4(host->transportt);

	if (current != host->ehandler)
		return FUNC2(dev, SAS_DEV_LU_RESET, cmd->device->lun, 0);

	FUNC1(cmd->device->lun, &lun);

	if (!i->dft->lldd_lu_reset)
		return FAILED;

	res = i->dft->lldd_lu_reset(dev, lun.scsi_lun);
	if (res == TMF_RESP_FUNC_SUCC || res == TMF_RESP_FUNC_COMPLETE)
		return SUCCESS;

	return FAILED;
}
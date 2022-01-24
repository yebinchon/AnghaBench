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
struct scsi_cmnd {struct ipr_resource_entry* device; } ;
struct ipr_resource_entry {scalar_t__ sata_port; TYPE_1__* host; struct ipr_resource_entry* hostdata; } ;
struct ipr_ioa_cfg {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_lock; scalar_t__ hostdata; } ;

/* Variables and functions */
 int FAILED ; 
 int SUCCESS ; 
 int FUNC0 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC1 (struct ipr_resource_entry*) ; 
 int /*<<< orphan*/  ipr_match_lun ; 
 int /*<<< orphan*/  ipr_match_res ; 
 int FUNC2 (struct ipr_ioa_cfg*,struct ipr_resource_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct scsi_cmnd *cmd)
{
	int rc;
	struct ipr_ioa_cfg *ioa_cfg;
	struct ipr_resource_entry *res;

	ioa_cfg = (struct ipr_ioa_cfg *) cmd->device->host->hostdata;
	res = cmd->device->hostdata;

	if (!res)
		return FAILED;

	FUNC3(cmd->device->host->host_lock);
	rc = FUNC0(cmd);
	FUNC4(cmd->device->host->host_lock);

	if (rc == SUCCESS) {
		if (FUNC1(res) && res->sata_port)
			rc = FUNC2(ioa_cfg, res, ipr_match_res);
		else
			rc = FUNC2(ioa_cfg, cmd->device, ipr_match_lun);
	}

	return rc;
}
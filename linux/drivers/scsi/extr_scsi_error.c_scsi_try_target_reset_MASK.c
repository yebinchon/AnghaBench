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
struct scsi_host_template {int (* eh_target_reset_handler ) (struct scsi_cmnd*) ;} ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; struct scsi_host_template* hostt; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int FAILED ; 
 int SUCCESS ; 
 int /*<<< orphan*/  __scsi_report_device_reset ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC4 (struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC5(struct scsi_cmnd *scmd)
{
	unsigned long flags;
	int rtn;
	struct Scsi_Host *host = scmd->device->host;
	struct scsi_host_template *hostt = host->hostt;

	if (!hostt->eh_target_reset_handler)
		return FAILED;

	rtn = hostt->eh_target_reset_handler(scmd);
	if (rtn == SUCCESS) {
		FUNC2(host->host_lock, flags);
		FUNC0(FUNC1(scmd->device), NULL,
					  __scsi_report_device_reset);
		FUNC3(host->host_lock, flags);
	}

	return rtn;
}
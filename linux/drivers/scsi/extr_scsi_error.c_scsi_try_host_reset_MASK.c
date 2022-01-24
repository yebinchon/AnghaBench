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
struct scsi_host_template {int (* eh_host_reset_handler ) (struct scsi_cmnd*) ;int /*<<< orphan*/  skip_settle_delay; } ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; struct scsi_host_template* hostt; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int FAILED ; 
 int /*<<< orphan*/  HOST_RESET_SETTLE_TIME ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct Scsi_Host*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC8(struct scsi_cmnd *scmd)
{
	unsigned long flags;
	int rtn;
	struct Scsi_Host *host = scmd->device->host;
	struct scsi_host_template *hostt = host->hostt;

	FUNC0(3,
		FUNC3(KERN_INFO, host, "Snd Host RST\n"));

	if (!hostt->eh_host_reset_handler)
		return FAILED;

	rtn = hostt->eh_host_reset_handler(scmd);

	if (rtn == SUCCESS) {
		if (!hostt->skip_settle_delay)
			FUNC6(HOST_RESET_SETTLE_TIME);
		FUNC4(host->host_lock, flags);
		FUNC2(host, FUNC1(scmd));
		FUNC5(host->host_lock, flags);
	}

	return rtn;
}
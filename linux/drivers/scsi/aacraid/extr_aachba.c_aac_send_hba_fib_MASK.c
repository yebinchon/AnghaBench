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
struct TYPE_3__ {int /*<<< orphan*/  phase; } ;
struct scsi_cmnd {int result; TYPE_1__ SCp; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;TYPE_2__* device; } ;
struct fib {int dummy; } ;
struct aac_dev {scalar_t__ maximum_num_physicals; } ;
struct TYPE_4__ {int lun; int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int AAC_MAX_LUN ; 
 int /*<<< orphan*/  AAC_OWNER_FIRMWARE ; 
 int DID_NO_CONNECT ; 
 int EINPROGRESS ; 
 int FUNC0 (struct fib*,struct scsi_cmnd*) ; 
 struct fib* FUNC1 (struct aac_dev*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (struct fib*) ; 
 int /*<<< orphan*/  FUNC3 (struct fib*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (struct scsi_cmnd*) ; 
 struct aac_dev* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC8(struct scsi_cmnd *scsicmd)
{
	struct fib *cmd_fibcontext;
	struct aac_dev *dev;
	int status;

	dev = FUNC6(scsicmd->device->host);
	if (FUNC5(scsicmd) >= dev->maximum_num_physicals ||
			scsicmd->device->lun > AAC_MAX_LUN - 1) {
		scsicmd->result = DID_NO_CONNECT << 16;
		scsicmd->scsi_done(scsicmd);
		return 0;
	}

	/*
	 *	Allocate and initialize a Fib then setup a BlockWrite command
	 */
	cmd_fibcontext = FUNC1(dev, scsicmd);
	if (!cmd_fibcontext)
		return -1;

	scsicmd->SCp.phase = AAC_OWNER_FIRMWARE;
	status = FUNC0(cmd_fibcontext, scsicmd);

	/*
	 *	Check that the command queued to the controller
	 */
	if (status == -EINPROGRESS)
		return 0;

	FUNC4("aac_hba_cmd_req: aac_fib_send failed with status: %d\n",
		status);
	FUNC2(cmd_fibcontext);
	FUNC3(cmd_fibcontext);

	return -1;
}
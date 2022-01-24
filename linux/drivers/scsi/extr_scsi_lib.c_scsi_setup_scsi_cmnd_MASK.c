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
struct scsi_device {int dummy; } ;
struct scsi_cmnd {int /*<<< orphan*/  allowed; int /*<<< orphan*/  transfersize; int /*<<< orphan*/  cmnd; int /*<<< orphan*/  cmd_len; int /*<<< orphan*/  sdb; } ;
struct request {scalar_t__ bio; } ;
typedef  scalar_t__ blk_status_t ;
struct TYPE_2__ {int /*<<< orphan*/  retries; int /*<<< orphan*/  cmd; int /*<<< orphan*/  cmd_len; } ;

/* Variables and functions */
 scalar_t__ BLK_STS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct scsi_cmnd* FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct scsi_cmnd*) ; 
 TYPE_1__* FUNC5 (struct request*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static blk_status_t FUNC7(struct scsi_device *sdev,
		struct request *req)
{
	struct scsi_cmnd *cmd = FUNC1(req);

	/*
	 * Passthrough requests may transfer data, in which case they must
	 * a bio attached to them.  Or they might contain a SCSI command
	 * that does not transfer data, in which case they may optionally
	 * submit a request without an attached bio.
	 */
	if (req->bio) {
		blk_status_t ret = FUNC4(cmd);
		if (FUNC6(ret != BLK_STS_OK))
			return ret;
	} else {
		FUNC0(FUNC2(req));

		FUNC3(&cmd->sdb, 0, sizeof(cmd->sdb));
	}

	cmd->cmd_len = FUNC5(req)->cmd_len;
	cmd->cmnd = FUNC5(req)->cmd;
	cmd->transfersize = FUNC2(req);
	cmd->allowed = FUNC5(req)->retries;
	return BLK_STS_OK;
}
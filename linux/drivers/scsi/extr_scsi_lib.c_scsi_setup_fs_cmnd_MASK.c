#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct scsi_device {TYPE_1__* handler; } ;
struct scsi_cmnd {int /*<<< orphan*/  cmnd; } ;
struct request {int dummy; } ;
typedef  scalar_t__ blk_status_t ;
struct TYPE_6__ {scalar_t__ (* init_command ) (struct scsi_cmnd*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  __cmd; int /*<<< orphan*/  cmd; } ;
struct TYPE_4__ {scalar_t__ (* prep_fn ) (struct scsi_device*,struct request*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_MAX_CDB ; 
 scalar_t__ BLK_STS_OK ; 
 struct scsi_cmnd* FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (struct scsi_cmnd*) ; 
 TYPE_2__* FUNC3 (struct request*) ; 
 scalar_t__ FUNC4 (struct scsi_device*,struct request*) ; 
 scalar_t__ FUNC5 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static blk_status_t FUNC7(struct scsi_device *sdev,
		struct request *req)
{
	struct scsi_cmnd *cmd = FUNC0(req);

	if (FUNC6(sdev->handler && sdev->handler->prep_fn)) {
		blk_status_t ret = sdev->handler->prep_fn(sdev, req);
		if (ret != BLK_STS_OK)
			return ret;
	}

	cmd->cmnd = FUNC3(req)->cmd = FUNC3(req)->__cmd;
	FUNC1(cmd->cmnd, 0, BLK_MAX_CDB);
	return FUNC2(cmd)->init_command(cmd);
}
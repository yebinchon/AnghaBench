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
struct wd719x_scb {int /*<<< orphan*/  phys; } ;
struct wd719x {TYPE_3__* sh; TYPE_1__* pdev; } ;
struct scsi_cmnd {int /*<<< orphan*/  tag; TYPE_2__* device; } ;
struct TYPE_6__ {int /*<<< orphan*/  host_lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  lun; int /*<<< orphan*/  id; int /*<<< orphan*/  host; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DID_ABORT ; 
 int FAILED ; 
 int SUCCESS ; 
 int WD719X_CMD_ABORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct wd719x_scb* FUNC1 (struct scsi_cmnd*) ; 
 struct wd719x* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC5 (struct wd719x*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wd719x_scb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct scsi_cmnd *cmd)
{
	int action, result;
	unsigned long flags;
	struct wd719x_scb *scb = FUNC1(cmd);
	struct wd719x *wd = FUNC2(cmd->device->host);

	FUNC0(&wd->pdev->dev, "abort command, tag: %x\n", cmd->tag);

	action = /*cmd->tag ? WD719X_CMD_ABORT_TAG : */WD719X_CMD_ABORT;

	FUNC3(wd->sh->host_lock, flags);
	result = FUNC5(wd, action, cmd->device->id,
				   cmd->device->lun, cmd->tag, scb->phys, 0);
	FUNC6(scb, DID_ABORT);
	FUNC4(wd->sh->host_lock, flags);
	if (result)
		return FAILED;

	return SUCCESS;
}
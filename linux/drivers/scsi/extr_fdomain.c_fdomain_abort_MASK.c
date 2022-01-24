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
struct scsi_cmnd {TYPE_1__* device; } ;
struct fdomain {TYPE_3__* cur_cmd; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  phase; } ;
struct TYPE_6__ {int result; TYPE_2__ SCp; } ;
struct TYPE_4__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int DID_ABORT ; 
 int FAILED ; 
 int SUCCESS ; 
 int /*<<< orphan*/  aborted ; 
 int /*<<< orphan*/  FUNC0 (struct fdomain*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fdomain*) ; 
 struct fdomain* FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct scsi_cmnd *cmd)
{
	struct Scsi_Host *sh = cmd->device->host;
	struct fdomain *fd = FUNC2(sh);
	unsigned long flags;

	if (!fd->cur_cmd)
		return FAILED;

	FUNC3(sh->host_lock, flags);

	FUNC1(fd);
	fd->cur_cmd->SCp.phase |= aborted;
	fd->cur_cmd->result = DID_ABORT << 16;

	/* Aborts are not done well. . . */
	FUNC0(fd, DID_ABORT << 16);
	FUNC4(sh->host_lock, flags);
	return SUCCESS;
}
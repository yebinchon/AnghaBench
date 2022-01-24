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
struct TYPE_4__ {int /*<<< orphan*/  phase; scalar_t__ sent_command; scalar_t__ have_data_in; scalar_t__ Message; scalar_t__ Status; } ;
struct scsi_cmnd {TYPE_2__* device; TYPE_1__ SCp; } ;
struct fdomain {scalar_t__ base; struct scsi_cmnd* cur_cmd; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  this_id; } ;
struct TYPE_5__ {TYPE_3__* host; } ;

/* Variables and functions */
 int ACTL_ARB ; 
 int ACTL_IRQEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ICTL_ARB ; 
 int PARITY_MASK ; 
 scalar_t__ REG_ACTL ; 
 scalar_t__ REG_BCTL ; 
 scalar_t__ REG_ICTL ; 
 scalar_t__ REG_SCSI_DATA_NOACK ; 
 int /*<<< orphan*/  FUNC1 (struct fdomain*) ; 
 int /*<<< orphan*/  in_arbitration ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 struct fdomain* FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct Scsi_Host *sh, struct scsi_cmnd *cmd)
{
	struct fdomain *fd = FUNC5(cmd->device->host);
	unsigned long flags;

	cmd->SCp.Status		= 0;
	cmd->SCp.Message	= 0;
	cmd->SCp.have_data_in	= 0;
	cmd->SCp.sent_command	= 0;
	cmd->SCp.phase		= in_arbitration;
	FUNC4(cmd, FUNC3(cmd));

	FUNC6(sh->host_lock, flags);

	fd->cur_cmd = cmd;

	FUNC1(fd);

	/* Start arbitration */
	FUNC2(0, fd->base + REG_ICTL);
	FUNC2(0, fd->base + REG_BCTL);	/* Disable data drivers */
	/* Set our id bit */
	FUNC2(FUNC0(cmd->device->host->this_id), fd->base + REG_SCSI_DATA_NOACK);
	FUNC2(ICTL_ARB, fd->base + REG_ICTL);
	/* Start arbitration */
	FUNC2(ACTL_ARB | ACTL_IRQEN | PARITY_MASK, fd->base + REG_ACTL);

	FUNC7(sh->host_lock, flags);

	return 0;
}
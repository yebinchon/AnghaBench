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
struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;unsigned char* cmnd; TYPE_1__* device; } ;
struct pvscsi_ctx {int dummy; } ;
struct pvscsi_adapter {int /*<<< orphan*/  hw_lock; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sdev_gendev; struct Scsi_Host* host; } ;

/* Variables and functions */
 int SCSI_MLQUEUE_HOST_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct scsi_cmnd*,struct pvscsi_ctx*,unsigned char) ; 
 struct pvscsi_ctx* FUNC1 (struct pvscsi_adapter*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (struct pvscsi_adapter*,unsigned char) ; 
 scalar_t__ FUNC3 (struct pvscsi_adapter*,struct pvscsi_ctx*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (struct pvscsi_adapter*,struct pvscsi_ctx*) ; 
 struct pvscsi_adapter* FUNC5 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct scsi_cmnd *cmd, void (*done)(struct scsi_cmnd *))
{
	struct Scsi_Host *host = cmd->device->host;
	struct pvscsi_adapter *adapter = FUNC5(host);
	struct pvscsi_ctx *ctx;
	unsigned long flags;
	unsigned char op;

	FUNC6(&adapter->hw_lock, flags);

	ctx = FUNC1(adapter, cmd);
	if (!ctx || FUNC3(adapter, ctx, cmd) != 0) {
		if (ctx)
			FUNC4(adapter, ctx);
		FUNC7(&adapter->hw_lock, flags);
		return SCSI_MLQUEUE_HOST_BUSY;
	}

	cmd->scsi_done = done;
	op = cmd->cmnd[0];

	FUNC0(&cmd->device->sdev_gendev,
		"queued cmd %p, ctx %p, op=%x\n", cmd, ctx, op);

	FUNC7(&adapter->hw_lock, flags);

	FUNC2(adapter, op);

	return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct pvscsi_ctx {struct scsi_cmnd* cmd; } ;
struct pvscsi_adapter {unsigned int req_depth; struct pvscsi_ctx* cmd_map; } ;

/* Variables and functions */
 int DID_RESET ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct pvscsi_adapter*,struct pvscsi_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct pvscsi_adapter*,struct pvscsi_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC4(struct pvscsi_adapter *adapter)
{
	unsigned i;

	for (i = 0; i < adapter->req_depth; i++) {
		struct pvscsi_ctx *ctx = &adapter->cmd_map[i];
		struct scsi_cmnd *cmd = ctx->cmd;
		if (cmd) {
			FUNC2(KERN_ERR, cmd,
				    "Forced reset on cmd %p\n", cmd);
			FUNC1(adapter, ctx);
			FUNC0(adapter, ctx);
			cmd->result = (DID_RESET << 16);
			cmd->scsi_done(cmd);
		}
	}
}
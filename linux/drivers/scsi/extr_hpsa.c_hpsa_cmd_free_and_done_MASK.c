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
struct scsi_cmnd {int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct ctlr_info {int dummy; } ;
struct CommandList {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ctlr_info*,struct CommandList*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC2(struct ctlr_info *h,
		struct CommandList *c, struct scsi_cmnd *cmd)
{
	FUNC0(h, c);
	if (cmd && cmd->scsi_done)
		cmd->scsi_done(cmd);
}
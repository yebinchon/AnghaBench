#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ Message; scalar_t__ Status; scalar_t__ this_residual; int /*<<< orphan*/ * ptr; TYPE_2__* buffer; } ;
struct scsi_cmnd {TYPE_1__ SCp; } ;
struct TYPE_5__ {scalar_t__ length; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct scsi_cmnd*) ; 
 TYPE_2__* FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static inline void FUNC3(struct scsi_cmnd *cmd)
{
	/*
	 * Initialize the Scsi Pointer field so that all of the commands in the
	 * various queues are valid.
	 */

	if (FUNC0(cmd)) {
		cmd->SCp.buffer = FUNC1(cmd);
		cmd->SCp.ptr = FUNC2(cmd->SCp.buffer);
		cmd->SCp.this_residual = cmd->SCp.buffer->length;
	} else {
		cmd->SCp.buffer = NULL;
		cmd->SCp.ptr = NULL;
		cmd->SCp.this_residual = 0;
	}

	cmd->SCp.Status = 0;
	cmd->SCp.Message = 0;
}
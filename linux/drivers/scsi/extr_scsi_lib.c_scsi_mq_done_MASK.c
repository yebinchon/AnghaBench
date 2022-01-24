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
struct scsi_cmnd {int /*<<< orphan*/  state; int /*<<< orphan*/  request; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCMD_STATE_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct scsi_cmnd *cmd)
{
	if (FUNC4(FUNC2(SCMD_STATE_COMPLETE, &cmd->state)))
		return;
	FUNC3(cmd);

	/*
	 * If the block layer didn't complete the request due to a timeout
	 * injection, scsi must clear its internal completed state so that the
	 * timeout handler will see it needs to escalate its own error
	 * recovery.
	 */
	if (FUNC4(!FUNC0(cmd->request)))
		FUNC1(SCMD_STATE_COMPLETE, &cmd->state);
}
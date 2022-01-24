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
struct scsi_cmnd {int /*<<< orphan*/  device; } ;
struct fc_rport {scalar_t__ port_state; } ;
typedef  enum blk_eh_timer_return { ____Placeholder_blk_eh_timer_return } blk_eh_timer_return ;

/* Variables and functions */
 int BLK_EH_DONE ; 
 int BLK_EH_RESET_TIMER ; 
 scalar_t__ FC_PORTSTATE_BLOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct fc_rport* FUNC1 (int /*<<< orphan*/ ) ; 

enum blk_eh_timer_return
FUNC2(struct scsi_cmnd *scmd)
{
	struct fc_rport *rport = FUNC1(FUNC0(scmd->device));

	if (rport->port_state == FC_PORTSTATE_BLOCKED)
		return BLK_EH_RESET_TIMER;

	return BLK_EH_DONE;
}
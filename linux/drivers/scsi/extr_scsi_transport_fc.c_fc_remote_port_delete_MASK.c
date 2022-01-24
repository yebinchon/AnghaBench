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
struct fc_rport {unsigned long dev_loss_tmo; scalar_t__ port_state; int fast_io_fail_tmo; int /*<<< orphan*/  dev_loss_work; int /*<<< orphan*/  fail_io_work; int /*<<< orphan*/  dev; int /*<<< orphan*/  flags; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 scalar_t__ FC_PORTSTATE_BLOCKED ; 
 scalar_t__ FC_PORTSTATE_ONLINE ; 
 int /*<<< orphan*/  FC_RPORT_DEVLOSS_PENDING ; 
 unsigned long HZ ; 
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*,int /*<<< orphan*/ *,unsigned long) ; 
 struct Scsi_Host* FUNC1 (struct fc_rport*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

void
FUNC5(struct fc_rport  *rport)
{
	struct Scsi_Host *shost = FUNC1(rport);
	unsigned long timeout = rport->dev_loss_tmo;
	unsigned long flags;

	/*
	 * No need to flush the fc_host work_q's, as all adds are synchronous.
	 *
	 * We do need to reclaim the rport scan work element, so eventually
	 * (in fc_rport_final_delete()) we'll flush the scsi host work_q if
	 * there's still a scan pending.
	 */

	FUNC3(shost->host_lock, flags);

	if (rport->port_state != FC_PORTSTATE_ONLINE) {
		FUNC4(shost->host_lock, flags);
		return;
	}

	/*
	 * In the past, we if this was not an FCP-Target, we would
	 * unconditionally just jump to deleting the rport.
	 * However, rports can be used as node containers by the LLDD,
	 * and its not appropriate to just terminate the rport at the
	 * first sign of a loss in connectivity. The LLDD may want to
	 * send ELS traffic to re-validate the login. If the rport is
	 * immediately deleted, it makes it inappropriate for a node
	 * container.
	 * So... we now unconditionally wait dev_loss_tmo before
	 * destroying an rport.
	 */

	rport->port_state = FC_PORTSTATE_BLOCKED;

	rport->flags |= FC_RPORT_DEVLOSS_PENDING;

	FUNC4(shost->host_lock, flags);

	FUNC2(&rport->dev);

	/* see if we need to kill io faster than waiting for device loss */
	if ((rport->fast_io_fail_tmo != -1) &&
	    (rport->fast_io_fail_tmo < timeout))
		FUNC0(shost, &rport->fail_io_work,
					rport->fast_io_fail_tmo * HZ);

	/* cap the length the devices can be blocked until they are deleted */
	FUNC0(shost, &rport->dev_loss_work, timeout * HZ);
}
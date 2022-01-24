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
struct fc_rport {scalar_t__ port_state; int flags; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int FAST_IO_FAIL ; 
 scalar_t__ FC_PORTSTATE_BLOCKED ; 
 int FC_RPORT_FAST_FAIL_TIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct Scsi_Host* FUNC1 (struct fc_rport*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

int FUNC4(struct fc_rport *rport)
{
	struct Scsi_Host *shost = FUNC1(rport);
	unsigned long flags;

	FUNC2(shost->host_lock, flags);
	while (rport->port_state == FC_PORTSTATE_BLOCKED &&
	       !(rport->flags & FC_RPORT_FAST_FAIL_TIMEDOUT)) {
		FUNC3(shost->host_lock, flags);
		FUNC0(1000);
		FUNC2(shost->host_lock, flags);
	}
	FUNC3(shost->host_lock, flags);

	if (rport->flags & FC_RPORT_FAST_FAIL_TIMEDOUT)
		return FAST_IO_FAIL;

	return 0;
}
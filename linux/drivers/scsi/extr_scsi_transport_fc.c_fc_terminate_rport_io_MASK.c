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
struct fc_rport {int /*<<< orphan*/  dev; } ;
struct fc_internal {TYPE_1__* f; } ;
struct Scsi_Host {int /*<<< orphan*/  transportt; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* terminate_rport_io ) (struct fc_rport*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SDEV_TRANSPORT_OFFLINE ; 
 struct Scsi_Host* FUNC0 (struct fc_rport*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_rport*) ; 
 struct fc_internal* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct fc_rport *rport)
{
	struct Scsi_Host *shost = FUNC0(rport);
	struct fc_internal *i = FUNC3(shost->transportt);

	/* Involve the LLDD if possible to terminate all io on the rport. */
	if (i->f->terminate_rport_io)
		i->f->terminate_rport_io(rport);

	/*
	 * Must unblock to flush queued IO. scsi-ml will fail incoming reqs.
	 */
	FUNC1(&rport->dev, SDEV_TRANSPORT_OFFLINE);
}
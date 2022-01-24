#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct fc_rport {scalar_t__ dd_data; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
struct TYPE_6__ {TYPE_4__* vha; int /*<<< orphan*/ * drport; int /*<<< orphan*/  rport; } ;
typedef  TYPE_2__ fc_port_t ;
struct TYPE_7__ {TYPE_1__* hw; int /*<<< orphan*/  dpc_flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABORT_ISP_ACTIVE ; 
 int DID_NO_CONNECT ; 
 int /*<<< orphan*/  FCS_DEVICE_DEAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC3 (struct fc_rport*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct fc_rport *rport)
{
	struct Scsi_Host *host = FUNC3(rport);
	fc_port_t *fcport = *(fc_port_t **)rport->dd_data;
	unsigned long flags;

	if (!fcport)
		return;

	/* Now that the rport has been deleted, set the fcport state to
	   FCS_DEVICE_DEAD */
	FUNC2(fcport, FCS_DEVICE_DEAD);

	/*
	 * Transport has effectively 'deleted' the rport, clear
	 * all local references.
	 */
	FUNC4(host->host_lock, flags);
	fcport->rport = *(fcport->drport = NULL);
	*((fc_port_t **)rport->dd_data) = NULL;
	FUNC5(host->host_lock, flags);

	if (FUNC6(ABORT_ISP_ACTIVE, &fcport->vha->dpc_flags))
		return;

	if (FUNC7(FUNC0(fcport->vha->hw->pdev))) {
		FUNC1(fcport->vha, DID_NO_CONNECT << 16);
		return;
	}
}
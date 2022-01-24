#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ rpsc_speed; } ;
struct bfa_fcs_rport_s {TYPE_2__ rpf; TYPE_1__* port; int /*<<< orphan*/  pid; int /*<<< orphan*/  fcs; } ;
struct TYPE_3__ {int /*<<< orphan*/  fcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPFSM_EVENT_RPORT_OFFLINE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct bfa_fcs_rport_s *rport)
{
	FUNC2(rport->fcs, rport->pid);

	if (FUNC0(rport->port->fcs))
		return;

	rport->rpf.rpsc_speed = 0;
	FUNC1(&rport->rpf, RPFSM_EVENT_RPORT_OFFLINE);
}
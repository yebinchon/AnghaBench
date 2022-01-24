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
struct srp_rport {scalar_t__ state; int /*<<< orphan*/  dev_loss_work; int /*<<< orphan*/  fast_io_fail_work; int /*<<< orphan*/  reconnect_work; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 scalar_t__ SRP_RPORT_BLOCKED ; 
 int /*<<< orphan*/  SRP_RPORT_LOST ; 
 int /*<<< orphan*/  FUNC0 (struct srp_rport*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct srp_rport*,int /*<<< orphan*/ ) ; 

void FUNC5(struct srp_rport *rport)
{
	FUNC2(&rport->mutex);
	if (rport->state == SRP_RPORT_BLOCKED)
		FUNC0(rport);
	FUNC4(rport, SRP_RPORT_LOST);
	FUNC3(&rport->mutex);

	FUNC1(&rport->reconnect_work);
	FUNC1(&rport->fast_io_fail_work);
	FUNC1(&rport->dev_loss_work);
}
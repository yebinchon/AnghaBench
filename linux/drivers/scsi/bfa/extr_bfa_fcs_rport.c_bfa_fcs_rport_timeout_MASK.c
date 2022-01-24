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
struct TYPE_2__ {int /*<<< orphan*/  plogi_timeouts; } ;
struct bfa_fcs_rport_s {int /*<<< orphan*/  port; TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPSM_EVENT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rport_plogi_timeouts ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	struct bfa_fcs_rport_s *rport = (struct bfa_fcs_rport_s *) arg;

	rport->stats.plogi_timeouts++;
	FUNC1(rport->port, rport_plogi_timeouts);
	FUNC0(rport, RPSM_EVENT_TIMEOUT);
}
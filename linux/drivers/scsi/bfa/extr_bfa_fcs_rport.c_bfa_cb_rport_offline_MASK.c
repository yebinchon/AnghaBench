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
struct bfa_fcs_rport_s {int /*<<< orphan*/  pwwn; int /*<<< orphan*/  fcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPSM_EVENT_HCB_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(void *cbarg)
{
	struct bfa_fcs_rport_s *rport = (struct bfa_fcs_rport_s *) cbarg;

	FUNC1(rport->fcs, rport->pwwn);
	FUNC0(rport, RPSM_EVENT_HCB_OFFLINE);
}
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
struct bfa_fcs_rport_s {int /*<<< orphan*/  itnim; int /*<<< orphan*/  pid; int /*<<< orphan*/  fcs; int /*<<< orphan*/  pwwn; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FCS_ITNIM_SM_FCS_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bfa_fcs_rport_s *rport)
{
	if ((!rport->pid) || (!rport->pwwn)) {
		FUNC2(rport->fcs, rport->pid);
		FUNC0(rport->fcs, rport->pid);
	}

	FUNC1(rport->itnim, BFA_FCS_ITNIM_SM_FCS_ONLINE);
}
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
struct fchs_s {int dummy; } ;
struct bfa_fcxp_s {int dummy; } ;
struct bfa_fcs_rport_s {int /*<<< orphan*/  bfa_rport; int /*<<< orphan*/  reply_oxid; int /*<<< orphan*/  pid; int /*<<< orphan*/  fcs; struct bfa_fcs_lport_s* port; } ;
struct bfa_fcs_lport_s {int /*<<< orphan*/  lp_tag; TYPE_1__* fabric; int /*<<< orphan*/  fcs; } ;
struct TYPE_2__ {int /*<<< orphan*/  vf_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  FC_CLASS_3 ; 
 int /*<<< orphan*/  FC_MAX_PDUSZ ; 
 struct bfa_fcxp_s* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_lport_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcxp_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcxp_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct fchs_s*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct fchs_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct bfa_fcs_rport_s *rport)
{
	struct bfa_fcs_lport_s *port = rport->port;
	struct fchs_s	fchs;
	struct bfa_fcxp_s *fcxp;
	int		len;

	FUNC4(rport->fcs, rport->pid);

	fcxp = FUNC0(port->fcs, BFA_FALSE);
	if (!fcxp)
		return;
	len = FUNC5(&fchs, FUNC2(fcxp),
			rport->pid, FUNC1(port),
			rport->reply_oxid, 0);

	FUNC3(fcxp, rport->bfa_rport, port->fabric->vf_id,
		port->lp_tag, BFA_FALSE, FC_CLASS_3, len, &fchs,
		NULL, NULL, FC_MAX_PDUSZ, 0);
}
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
typedef  int /*<<< orphan*/  u16 ;
struct fchs_s {int dummy; } ;
struct bfa_fcxp_s {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  logo_rcvd; } ;
struct bfa_fcs_rport_s {int /*<<< orphan*/  reply_oxid; int /*<<< orphan*/  pid; TYPE_1__ stats; struct bfa_fcs_lport_s* port; int /*<<< orphan*/  fcs; } ;
struct bfa_fcs_lport_s {int /*<<< orphan*/  lp_tag; TYPE_2__* fabric; int /*<<< orphan*/  fcs; } ;
struct TYPE_4__ {int /*<<< orphan*/  vf_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  FC_CLASS_3 ; 
 int /*<<< orphan*/  FC_MAX_PDUSZ ; 
 struct bfa_fcxp_s* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_lport_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcxp_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcxp_s*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fchs_s*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fchs_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void *rport_cbarg)
{
	struct bfa_fcs_rport_s *rport = rport_cbarg;
	struct bfa_fcs_lport_s *port;
	struct fchs_s	fchs;
	struct bfa_fcxp_s *fcxp;
	u16	len;

	FUNC4(rport->fcs, rport->pid);

	port = rport->port;

	fcxp = FUNC0(port->fcs, BFA_FALSE);
	if (!fcxp)
		return;

	rport->stats.logo_rcvd++;
	len = FUNC5(&fchs, FUNC2(fcxp),
				rport->pid, FUNC1(port),
				rport->reply_oxid);

	FUNC3(fcxp, NULL, port->fabric->vf_id, port->lp_tag, BFA_FALSE,
			FC_CLASS_3, len, &fchs, NULL, NULL, FC_MAX_PDUSZ, 0);
}
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
typedef  int /*<<< orphan*/  wwn_t ;
typedef  int /*<<< orphan*/  u32 ;
struct bfad_rport_s {int dummy; } ;
struct bfa_fcs_s {scalar_t__ num_rport_logins; int /*<<< orphan*/  bfad; } ;
struct bfa_fcs_rport_s {int /*<<< orphan*/  pid; int /*<<< orphan*/  itnim; int /*<<< orphan*/ * bfa_rport; scalar_t__ old_pid; int /*<<< orphan*/  pwwn; struct bfad_rport_s* rp_drv; struct bfa_fcs_s* fcs; struct bfa_fcs_lport_s* port; } ;
struct bfa_fcs_lport_s {struct bfa_fcs_s* fcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BFA_STATUS_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct bfa_fcs_rport_s**,struct bfad_rport_s**) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcs_lport_s*,struct bfa_fcs_rport_s*) ; 
 scalar_t__ FUNC5 (struct bfa_fcs_lport_s*) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_fcs_rport_s*) ; 
 scalar_t__ bfa_fcs_rport_max_logins ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_uninit ; 
 int /*<<< orphan*/  FUNC7 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bfa_fcs_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bfad_rport_s*) ; 

__attribute__((used)) static struct bfa_fcs_rport_s *
FUNC10(struct bfa_fcs_lport_s *port, wwn_t pwwn, u32 rpid)
{
	struct bfa_fcs_s	*fcs = port->fcs;
	struct bfa_fcs_rport_s *rport;
	struct bfad_rport_s	*rport_drv;

	/*
	 * allocate rport
	 */
	if (fcs->num_rport_logins >= bfa_fcs_rport_max_logins) {
		FUNC8(fcs, rpid);
		return NULL;
	}

	if (FUNC2(fcs->bfad, &rport, &rport_drv)
		!= BFA_STATUS_OK) {
		FUNC8(fcs, rpid);
		return NULL;
	}

	/*
	 * Initialize r-port
	 */
	rport->port = port;
	rport->fcs = fcs;
	rport->rp_drv = rport_drv;
	rport->pid = rpid;
	rport->pwwn = pwwn;
	rport->old_pid = 0;

	rport->bfa_rport = NULL;

	/*
	 * allocate FC-4s
	 */
	FUNC1(!FUNC5(port));

	if (FUNC5(port)) {
		rport->itnim = FUNC3(rport);
		if (!rport->itnim) {
			FUNC8(fcs, rpid);
			FUNC9(rport_drv);
			return NULL;
		}
	}

	FUNC4(port, rport);
	fcs->num_rport_logins++;

	FUNC7(rport, bfa_fcs_rport_sm_uninit);

	/* Initialize the Rport Features(RPF) Sub Module  */
	if (!FUNC0(rport->pid))
		FUNC6(rport);

	return rport;
}
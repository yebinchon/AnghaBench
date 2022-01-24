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
struct bfa_fcxp_wqe_s {int /*<<< orphan*/  alloc_cbarg; int /*<<< orphan*/  (* alloc_cbfn ) (int /*<<< orphan*/ ,struct bfa_fcxp_s*) ;int /*<<< orphan*/  rsp_sglen_cbfn; int /*<<< orphan*/  rsp_sga_cbfn; int /*<<< orphan*/  req_sglen_cbfn; int /*<<< orphan*/  req_sga_cbfn; int /*<<< orphan*/  nrsp_sgles; int /*<<< orphan*/  nreq_sgles; int /*<<< orphan*/  bfa; int /*<<< orphan*/  caller; } ;
struct bfa_fcxp_s {int /*<<< orphan*/  qe; scalar_t__ req_rsp; int /*<<< orphan*/  fcxp_tag; struct bfa_fcxp_mod_s* fcxp_mod; } ;
struct bfa_fcxp_mod_s {int /*<<< orphan*/  fcxp_rsp_free_q; int /*<<< orphan*/  fcxp_req_free_q; int /*<<< orphan*/  fcxp_active_q; int /*<<< orphan*/  bfa; int /*<<< orphan*/  rsp_wait_q; int /*<<< orphan*/  req_wait_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcxp_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bfa_fcxp_wqe_s**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bfa_fcxp_s*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct bfa_fcxp_s*) ; 

__attribute__((used)) static void
FUNC8(struct bfa_fcxp_s *fcxp)
{
	struct bfa_fcxp_mod_s *mod = fcxp->fcxp_mod;
	struct bfa_fcxp_wqe_s *wqe;

	if (fcxp->req_rsp)
		FUNC2(&mod->req_wait_q, &wqe);
	else
		FUNC2(&mod->rsp_wait_q, &wqe);

	if (wqe) {
		FUNC4(mod->bfa, fcxp->fcxp_tag);

		FUNC1(fcxp, wqe->caller, wqe->bfa, wqe->nreq_sgles,
			wqe->nrsp_sgles, wqe->req_sga_cbfn,
			wqe->req_sglen_cbfn, wqe->rsp_sga_cbfn,
			wqe->rsp_sglen_cbfn);

		wqe->alloc_cbfn(wqe->alloc_cbarg, fcxp);
		return;
	}

	FUNC0(!FUNC3(&mod->fcxp_active_q, fcxp));
	FUNC6(&fcxp->qe);

	if (fcxp->req_rsp)
		FUNC5(&fcxp->qe, &mod->fcxp_req_free_q);
	else
		FUNC5(&fcxp->qe, &mod->fcxp_rsp_free_q);
}
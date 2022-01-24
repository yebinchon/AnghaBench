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
struct bfad_s {int dummy; } ;
struct bfa_s {int /*<<< orphan*/  fcs; } ;
struct bfa_fcs_fabric_s {struct bfa_fcs_s* fcs; int /*<<< orphan*/  bport; int /*<<< orphan*/  wc; int /*<<< orphan*/  lps; int /*<<< orphan*/  vf_q; int /*<<< orphan*/  vport_q; } ;
struct bfa_fcs_s {struct bfa_s* bfa; scalar_t__ num_rport_logins; int /*<<< orphan*/  min_cfg; struct bfad_s* bfad; struct bfa_fcs_fabric_s fabric; } ;
typedef  int /*<<< orphan*/  bfa_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_TRUE ; 
 int /*<<< orphan*/  FC_VF_ID_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_s*,int /*<<< orphan*/ ,struct bfa_fcs_s*) ; 
 int /*<<< orphan*/  bfa_fcs_fabric_delete_comp ; 
 int /*<<< orphan*/  bfa_fcs_fabric_sm_uninit ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bfa_fcs_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_fcs_port_event_handler ; 
 int /*<<< orphan*/  bfa_fcs_uf_recv ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcs_fabric_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_s*,int /*<<< orphan*/ ,struct bfa_fcs_s*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_fcs_fabric_s*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct bfa_fcs_fabric_s*,int /*<<< orphan*/ ,int) ; 

void
FUNC11(struct bfa_fcs_s *fcs, struct bfa_s *bfa, struct bfad_s *bfad,
	       bfa_boolean_t min_cfg)
{
	struct bfa_fcs_fabric_s *fabric = &fcs->fabric;

	fcs->bfa = bfa;
	fcs->bfad = bfad;
	fcs->min_cfg = min_cfg;
	fcs->num_rport_logins = 0;

	bfa->fcs = BFA_TRUE;
	FUNC9();

	FUNC2(fcs->bfa, bfa_fcs_port_event_handler, fcs);
	FUNC6(fcs->bfa, bfa_fcs_uf_recv, fcs);

	FUNC10(fabric, 0, sizeof(struct bfa_fcs_fabric_s));

	/*
	 * Initialize base fabric.
	 */
	fabric->fcs = fcs;
	FUNC0(&fabric->vport_q);
	FUNC0(&fabric->vf_q);
	fabric->lps = FUNC4(fcs->bfa);
	FUNC1(!fabric->lps);

	/*
	 * Initialize fabric delete completion handler. Fabric deletion is
	 * complete when the last vport delete is complete.
	 */
	FUNC7(&fabric->wc, bfa_fcs_fabric_delete_comp, fabric);
	FUNC8(&fabric->wc); /* For the base port */

	FUNC5(fabric, bfa_fcs_fabric_sm_uninit);
	FUNC3(&fabric->bport, fabric->fcs, FC_VF_ID_NULL, NULL);
}
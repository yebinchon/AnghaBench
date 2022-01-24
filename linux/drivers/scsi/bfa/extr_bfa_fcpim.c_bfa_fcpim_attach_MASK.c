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
struct bfa_s {int dummy; } ;
struct bfa_pcidev_s {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  delay_comp; int /*<<< orphan*/  path_tov; } ;
struct TYPE_3__ {int /*<<< orphan*/  num_tskim_reqs; int /*<<< orphan*/  num_rports; int /*<<< orphan*/  num_ioim_reqs; } ;
struct bfa_iocfc_cfg_s {TYPE_2__ drvcfg; TYPE_1__ fwcfg; } ;
struct bfa_fcpim_s {int /*<<< orphan*/ * profile_start; int /*<<< orphan*/ * profile_comp; int /*<<< orphan*/  delay_comp; int /*<<< orphan*/  path_tov; int /*<<< orphan*/  num_tskim_reqs; int /*<<< orphan*/  num_itnims; struct bfa_s* bfa; struct bfa_fcp_mod_s* fcp; } ;
struct bfa_fcp_mod_s {struct bfa_s* bfa; struct bfa_fcpim_s fcpim; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfa_fcpim_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcpim_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcpim_s*) ; 

__attribute__((used)) static void
FUNC4(struct bfa_fcp_mod_s *fcp, void *bfad,
		struct bfa_iocfc_cfg_s *cfg, struct bfa_pcidev_s *pcidev)
{
	struct bfa_fcpim_s *fcpim = &fcp->fcpim;
	struct bfa_s *bfa = fcp->bfa;

	FUNC2(bfa, cfg->drvcfg.path_tov);
	FUNC2(bfa, cfg->fwcfg.num_rports);
	FUNC2(bfa, cfg->fwcfg.num_ioim_reqs);
	FUNC2(bfa, cfg->fwcfg.num_tskim_reqs);

	fcpim->fcp		= fcp;
	fcpim->bfa		= bfa;
	fcpim->num_itnims	= cfg->fwcfg.num_rports;
	fcpim->num_tskim_reqs = cfg->fwcfg.num_tskim_reqs;
	fcpim->path_tov		= cfg->drvcfg.path_tov;
	fcpim->delay_comp	= cfg->drvcfg.delay_comp;
	fcpim->profile_comp = NULL;
	fcpim->profile_start = NULL;

	FUNC1(fcpim);
	FUNC3(fcpim);
	FUNC0(fcpim);
}
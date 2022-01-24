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
struct bfi_iocfc_cfg_s {int /*<<< orphan*/  num_ioim_reqs; } ;
struct bfa_iocfc_s {struct bfi_iocfc_cfg_s* cfginfo; } ;
struct bfa_s {struct bfa_iocfc_s iocfc; } ;
struct bfa_iocfc_fwcfg_s {int /*<<< orphan*/  num_tskim_reqs; int /*<<< orphan*/  num_ioim_reqs; int /*<<< orphan*/  num_rports; int /*<<< orphan*/  num_uf_bufs; int /*<<< orphan*/  num_fcxp_reqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfa_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct bfa_s *bfa, struct bfa_iocfc_fwcfg_s *fwcfg)
{
	struct bfa_iocfc_s	*iocfc   = &bfa->iocfc;
	struct bfi_iocfc_cfg_s	*cfg_info = iocfc->cfginfo;

	FUNC1(bfa, fwcfg->num_fcxp_reqs);
	FUNC4(bfa, fwcfg->num_uf_bufs);
	FUNC2(bfa, fwcfg->num_rports);
	FUNC0(bfa, FUNC5(cfg_info->num_ioim_reqs),
			  fwcfg->num_ioim_reqs);
	FUNC3(bfa, fwcfg->num_tskim_reqs);
}
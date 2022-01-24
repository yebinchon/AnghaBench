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
struct TYPE_3__ {int /*<<< orphan*/  ablk; } ;
struct TYPE_4__ {TYPE_1__ modules; } ;
struct bfad_s {int /*<<< orphan*/  bfad_lock; TYPE_2__ bfa; } ;
struct bfad_hal_comp {scalar_t__ status; int /*<<< orphan*/  comp; } ;
struct bfa_bsg_pcifn_cfg_s {scalar_t__ status; int /*<<< orphan*/  pcifn_cfg; } ;

/* Variables and functions */
 scalar_t__ BFA_STATUS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfad_hal_comp*) ; 
 int /*<<< orphan*/  bfad_hcb_comp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct bfad_s *bfad, void *cmd)
{
	struct bfa_bsg_pcifn_cfg_s *iocmd = (struct bfa_bsg_pcifn_cfg_s *)cmd;
	struct bfad_hal_comp fcomp;
	unsigned long flags;

	FUNC1(&fcomp.comp);
	FUNC2(&bfad->bfad_lock, flags);
	iocmd->status = FUNC0(&bfad->bfa.modules.ablk,
				&iocmd->pcifn_cfg,
				bfad_hcb_comp, &fcomp);
	FUNC3(&bfad->bfad_lock, flags);
	if (iocmd->status != BFA_STATUS_OK)
		goto out;

	FUNC4(&fcomp.comp);
	iocmd->status = fcomp.status;
out:
	return 0;
}
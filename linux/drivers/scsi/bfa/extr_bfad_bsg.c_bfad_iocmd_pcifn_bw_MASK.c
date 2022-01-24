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
struct bfa_bsg_pcifn_s {scalar_t__ status; int /*<<< orphan*/  bw_max; int /*<<< orphan*/  bw_min; int /*<<< orphan*/  pcifn_id; } ;

/* Variables and functions */
 scalar_t__ BFA_STATUS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bfad_hal_comp*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfad_s*,scalar_t__) ; 
 int /*<<< orphan*/  bfad_hcb_comp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(struct bfad_s *bfad, void *cmd)
{
	struct bfa_bsg_pcifn_s *iocmd = (struct bfa_bsg_pcifn_s *)cmd;
	struct bfad_hal_comp fcomp;
	unsigned long flags;

	FUNC2(&fcomp.comp);
	FUNC3(&bfad->bfad_lock, flags);
	iocmd->status = FUNC0(&bfad->bfa.modules.ablk,
				iocmd->pcifn_id, iocmd->bw_min,
				iocmd->bw_max, bfad_hcb_comp, &fcomp);
	FUNC4(&bfad->bfad_lock, flags);
	FUNC1(bfad, iocmd->status);
	if (iocmd->status != BFA_STATUS_OK)
		goto out;

	FUNC5(&fcomp.comp);
	iocmd->status = fcomp.status;
	FUNC1(bfad, iocmd->status);
out:
	return 0;
}
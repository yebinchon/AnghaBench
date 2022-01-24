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
struct bfad_s {int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/  bfa; } ;
struct bfad_hal_comp {scalar_t__ status; int /*<<< orphan*/  comp; } ;
struct bfa_bsg_diag_get_temp_s {scalar_t__ status; int /*<<< orphan*/  result; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ BFA_STATUS_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfad_hal_comp*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfad_s*,scalar_t__) ; 
 int /*<<< orphan*/  bfad_hcb_comp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(struct bfad_s *bfad, void *cmd)
{
	struct bfa_bsg_diag_get_temp_s *iocmd =
			(struct bfa_bsg_diag_get_temp_s *)cmd;
	struct bfad_hal_comp fcomp;
	unsigned long	flags;

	FUNC3(&fcomp.comp);
	FUNC4(&bfad->bfad_lock, flags);
	iocmd->status = FUNC1(FUNC0(&bfad->bfa),
				&iocmd->result, bfad_hcb_comp, &fcomp);
	FUNC5(&bfad->bfad_lock, flags);
	FUNC2(bfad, iocmd->status);
	if (iocmd->status != BFA_STATUS_OK)
		goto out;
	FUNC6(&fcomp.comp);
	iocmd->status = fcomp.status;
out:
	return 0;
}
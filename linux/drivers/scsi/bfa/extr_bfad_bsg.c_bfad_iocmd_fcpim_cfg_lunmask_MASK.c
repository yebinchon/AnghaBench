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
struct bfa_bsg_fcpim_lunmask_s {int /*<<< orphan*/  lun; int /*<<< orphan*/  rpwwn; int /*<<< orphan*/  pwwn; int /*<<< orphan*/  vf_id; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 unsigned int IOCMD_FCPIM_LUNMASK_ADD ; 
 unsigned int IOCMD_FCPIM_LUNMASK_DELETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC4(struct bfad_s *bfad, void *cmd, unsigned int v_cmd)
{
	struct bfa_bsg_fcpim_lunmask_s *iocmd =
				(struct bfa_bsg_fcpim_lunmask_s *)cmd;
	unsigned long	flags;

	FUNC2(&bfad->bfad_lock, flags);
	if (v_cmd == IOCMD_FCPIM_LUNMASK_ADD)
		iocmd->status = FUNC0(&bfad->bfa, iocmd->vf_id,
					&iocmd->pwwn, iocmd->rpwwn, iocmd->lun);
	else if (v_cmd == IOCMD_FCPIM_LUNMASK_DELETE)
		iocmd->status = FUNC1(&bfad->bfa,
					iocmd->vf_id, &iocmd->pwwn,
					iocmd->rpwwn, iocmd->lun);
	FUNC3(&bfad->bfad_lock, flags);
	return 0;
}
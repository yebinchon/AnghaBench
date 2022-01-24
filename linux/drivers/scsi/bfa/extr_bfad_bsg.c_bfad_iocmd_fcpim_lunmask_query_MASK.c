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
struct bfa_lunmask_cfg_s {int dummy; } ;
struct bfa_bsg_fcpim_lunmask_query_s {int /*<<< orphan*/  status; struct bfa_lunmask_cfg_s lun_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bfa_lunmask_cfg_s*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC3(struct bfad_s *bfad, void *cmd)
{
	struct bfa_bsg_fcpim_lunmask_query_s *iocmd =
			(struct bfa_bsg_fcpim_lunmask_query_s *)cmd;
	struct bfa_lunmask_cfg_s *lun_mask = &iocmd->lun_mask;
	unsigned long	flags;

	FUNC1(&bfad->bfad_lock, flags);
	iocmd->status = FUNC0(&bfad->bfa, lun_mask);
	FUNC2(&bfad->bfad_lock, flags);
	return 0;
}
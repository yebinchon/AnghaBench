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
struct bfa_bsg_fcpim_profile_s {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 unsigned int IOCMD_FCPIM_PROFILE_OFF ; 
 unsigned int IOCMD_FCPIM_PROFILE_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC5(struct bfad_s *bfad, void *cmd, unsigned int v_cmd)
{
	struct bfa_bsg_fcpim_profile_s *iocmd =
				(struct bfa_bsg_fcpim_profile_s *)cmd;
	unsigned long	flags;

	FUNC3(&bfad->bfad_lock, flags);
	if (v_cmd == IOCMD_FCPIM_PROFILE_ON)
		iocmd->status = FUNC1(&bfad->bfa, FUNC2());
	else if (v_cmd == IOCMD_FCPIM_PROFILE_OFF)
		iocmd->status = FUNC0(&bfad->bfa);
	FUNC4(&bfad->bfad_lock, flags);

	return 0;
}
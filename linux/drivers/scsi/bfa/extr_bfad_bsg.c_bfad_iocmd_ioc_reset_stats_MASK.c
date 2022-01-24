#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  ioc; } ;
struct bfad_s {int /*<<< orphan*/  bfad_lock; TYPE_1__ bfa; } ;
struct bfa_bsg_gen_s {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_STATUS_OK ; 
 unsigned int IOCMD_IOC_RESET_FWSTATS ; 
 unsigned int IOCMD_IOC_RESET_STATS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC4(struct bfad_s *bfad, void *cmd, unsigned int v_cmd)
{
	struct bfa_bsg_gen_s *iocmd = (struct bfa_bsg_gen_s *)cmd;
	unsigned long	flags;

	if (v_cmd == IOCMD_IOC_RESET_STATS) {
		FUNC0(&bfad->bfa);
		iocmd->status = BFA_STATUS_OK;
	} else if (v_cmd == IOCMD_IOC_RESET_FWSTATS) {
		FUNC2(&bfad->bfad_lock, flags);
		iocmd->status = FUNC1(&bfad->bfa.ioc);
		FUNC3(&bfad->bfad_lock, flags);
	}

	return 0;
}
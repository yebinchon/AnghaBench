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
struct bfad_s {int /*<<< orphan*/  enable_comp; int /*<<< orphan*/  bfad_lock; TYPE_1__ bfa; } ;
struct bfa_bsg_gen_s {void* status; } ;

/* Variables and functions */
 void* BFA_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(struct bfad_s *bfad, void *cmd)
{
	struct bfa_bsg_gen_s *iocmd = (struct bfa_bsg_gen_s *)cmd;
	unsigned long	flags;

	FUNC3(&bfad->bfad_lock, flags);
	/* If IOC is not in disabled state - return */
	if (!FUNC0(&bfad->bfa.ioc)) {
		FUNC4(&bfad->bfad_lock, flags);
		iocmd->status = BFA_STATUS_OK;
		return 0;
	}

	FUNC2(&bfad->enable_comp);
	FUNC1(&bfad->bfa);
	iocmd->status = BFA_STATUS_OK;
	FUNC4(&bfad->bfad_lock, flags);
	FUNC5(&bfad->enable_comp);

	return 0;
}
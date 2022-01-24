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
struct bfa_bsg_diag_beacon_s {int /*<<< orphan*/  second; int /*<<< orphan*/  link_e2e_beacon; int /*<<< orphan*/  beacon; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC4(struct bfad_s *bfad, void *cmd)
{
	struct bfa_bsg_diag_beacon_s *iocmd =
			(struct bfa_bsg_diag_beacon_s *)cmd;
	unsigned long	flags;

	FUNC2(&bfad->bfad_lock, flags);
	iocmd->status = FUNC1(FUNC0(&bfad->bfa),
				iocmd->beacon, iocmd->link_e2e_beacon,
				iocmd->second);
	FUNC3(&bfad->bfad_lock, flags);
	return 0;
}
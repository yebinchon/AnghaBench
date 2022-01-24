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
struct bfad_s {int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/  bfa_fcs; } ;
struct bfa_rport_stats_s {int dummy; } ;
struct bfa_rport_hal_stats_s {int dummy; } ;
struct bfa_fcs_rport_s {int /*<<< orphan*/  stats; } ;
struct bfa_fcs_lport_s {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  hal_stats; } ;
struct bfa_bsg_rport_stats_s {int /*<<< orphan*/  status; TYPE_1__ stats; int /*<<< orphan*/  rpwwn; int /*<<< orphan*/  pwwn; int /*<<< orphan*/  vf_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_STATUS_OK ; 
 int /*<<< orphan*/  BFA_STATUS_UNKNOWN_LWWN ; 
 int /*<<< orphan*/  BFA_STATUS_UNKNOWN_RWWN ; 
 struct bfa_fcs_lport_s* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct bfa_fcs_rport_s*) ; 
 struct bfa_fcs_rport_s* FUNC2 (struct bfa_fcs_lport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfad_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC7(struct bfad_s *bfad, void *cmd)
{
	struct bfa_bsg_rport_stats_s *iocmd =
			(struct bfa_bsg_rport_stats_s *)cmd;
	struct bfa_fcs_lport_s *fcs_port;
	struct bfa_fcs_rport_s *fcs_rport;
	unsigned long	flags;

	FUNC5(&bfad->bfad_lock, flags);
	fcs_port = FUNC0(&bfad->bfa_fcs,
				iocmd->vf_id, iocmd->pwwn);
	if (fcs_port == NULL) {
		FUNC3(bfad, 0);
		FUNC6(&bfad->bfad_lock, flags);
		iocmd->status = BFA_STATUS_UNKNOWN_LWWN;
		goto out;
	}

	fcs_rport = FUNC2(fcs_port, iocmd->rpwwn);
	if (fcs_rport == NULL) {
		FUNC3(bfad, 0);
		FUNC6(&bfad->bfad_lock, flags);
		iocmd->status = BFA_STATUS_UNKNOWN_RWWN;
		goto out;
	}

	FUNC4((void *)&iocmd->stats, (void *)&fcs_rport->stats,
		sizeof(struct bfa_rport_stats_s));
	if (FUNC1(fcs_rport)) {
		FUNC4((void *)&iocmd->stats.hal_stats,
		       (void *)&(FUNC1(fcs_rport)->stats),
			sizeof(struct bfa_rport_hal_stats_s));
	}

	FUNC6(&bfad->bfad_lock, flags);
	iocmd->status = BFA_STATUS_OK;
out:
	return 0;
}
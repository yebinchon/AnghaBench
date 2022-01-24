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
struct bfad_s {int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/  bfa_fcs; } ;
struct bfa_fcs_vport_s {int dummy; } ;
struct bfa_bsg_vport_attr_s {int /*<<< orphan*/  status; int /*<<< orphan*/  vport_attr; int /*<<< orphan*/  vpwwn; int /*<<< orphan*/  vf_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_STATUS_OK ; 
 int /*<<< orphan*/  BFA_STATUS_UNKNOWN_VWWN ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_vport_s*,int /*<<< orphan*/ *) ; 
 struct bfa_fcs_vport_s* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC4(struct bfad_s *bfad, void *cmd)
{
	struct bfa_fcs_vport_s *fcs_vport;
	struct bfa_bsg_vport_attr_s *iocmd = (struct bfa_bsg_vport_attr_s *)cmd;
	unsigned long	flags;

	FUNC2(&bfad->bfad_lock, flags);
	fcs_vport = FUNC1(&bfad->bfa_fcs,
				iocmd->vf_id, iocmd->vpwwn);
	if (fcs_vport == NULL) {
		FUNC3(&bfad->bfad_lock, flags);
		iocmd->status = BFA_STATUS_UNKNOWN_VWWN;
		goto out;
	}

	FUNC0(fcs_vport, &iocmd->vport_attr);
	FUNC3(&bfad->bfad_lock, flags);
	iocmd->status = BFA_STATUS_OK;
out:
	return 0;
}
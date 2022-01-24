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
typedef  int /*<<< orphan*/  wwn_t ;
typedef  int uint32_t ;
struct bfad_s {int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/  bfa_fcs; } ;
struct bfa_bsg_fabric_get_lports_s {int nports; scalar_t__ status; int /*<<< orphan*/  vf_id; } ;
typedef  int /*<<< orphan*/  bfa_fcs_vf_t ;

/* Variables and functions */
 scalar_t__ BFA_STATUS_EINVAL ; 
 scalar_t__ BFA_STATUS_OK ; 
 scalar_t__ BFA_STATUS_UNKNOWN_VFID ; 
 scalar_t__ BFA_STATUS_VERSION_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC5(struct bfad_s *bfad, void *cmd,
			unsigned int payload_len)
{
	struct bfa_bsg_fabric_get_lports_s *iocmd =
			(struct bfa_bsg_fabric_get_lports_s *)cmd;
	bfa_fcs_vf_t	*fcs_vf;
	uint32_t	nports = iocmd->nports;
	unsigned long	flags;
	void	*iocmd_bufptr;

	if (nports == 0) {
		iocmd->status = BFA_STATUS_EINVAL;
		goto out;
	}

	if (FUNC2(payload_len,
		sizeof(struct bfa_bsg_fabric_get_lports_s),
		sizeof(wwn_t) * iocmd->nports) != BFA_STATUS_OK) {
		iocmd->status = BFA_STATUS_VERSION_FAIL;
		goto out;
	}

	iocmd_bufptr = (char *)iocmd +
			sizeof(struct bfa_bsg_fabric_get_lports_s);

	FUNC3(&bfad->bfad_lock, flags);
	fcs_vf = FUNC1(&bfad->bfa_fcs, iocmd->vf_id);
	if (fcs_vf == NULL) {
		FUNC4(&bfad->bfad_lock, flags);
		iocmd->status = BFA_STATUS_UNKNOWN_VFID;
		goto out;
	}
	FUNC0(fcs_vf, (wwn_t *)iocmd_bufptr, &nports);
	FUNC4(&bfad->bfad_lock, flags);

	iocmd->nports = nports;
	iocmd->status = BFA_STATUS_OK;
out:
	return 0;
}
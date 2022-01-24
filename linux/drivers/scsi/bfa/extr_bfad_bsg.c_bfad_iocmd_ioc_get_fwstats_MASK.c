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
struct bfa_fw_stats_s {int dummy; } ;
struct bfa_bsg_ioc_fwstats_s {scalar_t__ status; } ;

/* Variables and functions */
 scalar_t__ BFA_STATUS_OK ; 
 scalar_t__ BFA_STATUS_VERSION_FAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfad_s*,int) ; 
 scalar_t__ FUNC2 (unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC5(struct bfad_s *bfad, void *cmd,
			unsigned int payload_len)
{
	struct bfa_bsg_ioc_fwstats_s *iocmd =
			(struct bfa_bsg_ioc_fwstats_s *)cmd;
	void	*iocmd_bufptr;
	unsigned long	flags;

	if (FUNC2(payload_len,
			sizeof(struct bfa_bsg_ioc_fwstats_s),
			sizeof(struct bfa_fw_stats_s)) != BFA_STATUS_OK) {
		iocmd->status = BFA_STATUS_VERSION_FAIL;
		goto out;
	}

	iocmd_bufptr = (char *)iocmd + sizeof(struct bfa_bsg_ioc_fwstats_s);
	FUNC3(&bfad->bfad_lock, flags);
	iocmd->status = FUNC0(&bfad->bfa.ioc, iocmd_bufptr);
	FUNC4(&bfad->bfad_lock, flags);

	if (iocmd->status != BFA_STATUS_OK) {
		FUNC1(bfad, iocmd->status);
		goto out;
	}
out:
	FUNC1(bfad, 0x6666);
	return 0;
}
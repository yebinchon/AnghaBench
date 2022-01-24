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
typedef  int /*<<< orphan*/  u8 ;
struct bfad_s {int /*<<< orphan*/  plog_buf; } ;
struct bfa_plog_s {int dummy; } ;
struct bfa_bsg_debug_s {int bufsz; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_STATUS_EINVAL ; 
 int /*<<< orphan*/  BFA_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (struct bfad_s*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *,int) ; 

int
FUNC2(struct bfad_s *bfad, void *cmd)
{
	struct bfa_bsg_debug_s *iocmd = (struct bfa_bsg_debug_s *)cmd;
	void *iocmd_bufptr;

	if (iocmd->bufsz < sizeof(struct bfa_plog_s)) {
		FUNC0(bfad, sizeof(struct bfa_plog_s));
		iocmd->status = BFA_STATUS_EINVAL;
		goto out;
	}

	iocmd->status = BFA_STATUS_OK;
	iocmd_bufptr = (char *)iocmd + sizeof(struct bfa_bsg_debug_s);
	FUNC1(iocmd_bufptr, (u8 *) &bfad->plog_buf, sizeof(struct bfa_plog_s));
out:
	return 0;
}
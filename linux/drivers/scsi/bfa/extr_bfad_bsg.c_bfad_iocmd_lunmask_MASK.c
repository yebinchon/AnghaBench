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
struct bfa_bsg_gen_s {scalar_t__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 scalar_t__ BFA_STATUS_OK ; 
 int /*<<< orphan*/  BFA_TRUE ; 
 unsigned int IOCMD_FCPIM_LUNMASK_CLEAR ; 
 unsigned int IOCMD_FCPIM_LUNMASK_DISABLE ; 
 unsigned int IOCMD_FCPIM_LUNMASK_ENABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfad_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC5(struct bfad_s *bfad, void *pcmd, unsigned int v_cmd)
{
	struct bfa_bsg_gen_s *iocmd = (struct bfa_bsg_gen_s *)pcmd;
	unsigned long	flags;

	FUNC3(&bfad->bfad_lock, flags);
	if (v_cmd == IOCMD_FCPIM_LUNMASK_ENABLE) {
		iocmd->status = FUNC1(&bfad->bfa, BFA_TRUE);
		/* Set the LUN Scanning mode to be Sequential scan */
		if (iocmd->status == BFA_STATUS_OK)
			FUNC2(bfad, BFA_TRUE);
	} else if (v_cmd == IOCMD_FCPIM_LUNMASK_DISABLE) {
		iocmd->status = FUNC1(&bfad->bfa, BFA_FALSE);
		/* Set the LUN Scanning mode to default REPORT_LUNS scan */
		if (iocmd->status == BFA_STATUS_OK)
			FUNC2(bfad, BFA_FALSE);
	} else if (v_cmd == IOCMD_FCPIM_LUNMASK_CLEAR)
		iocmd->status = FUNC0(&bfad->bfa);
	FUNC4(&bfad->bfad_lock, flags);
	return 0;
}
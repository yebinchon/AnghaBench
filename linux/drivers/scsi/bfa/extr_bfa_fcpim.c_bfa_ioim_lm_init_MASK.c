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
struct bfa_s {int dummy; } ;
struct bfa_lun_mask_s {int /*<<< orphan*/  rp_tag; int /*<<< orphan*/  lp_tag; int /*<<< orphan*/  ua; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_IOIM_LM_UA_RESET ; 
 int /*<<< orphan*/  BFA_LP_TAG_INVALID ; 
 scalar_t__ BFA_LUNMASK_MINCFG ; 
 int /*<<< orphan*/  BFA_RPORT_TAG_INVALID ; 
 int MAX_LUN_MASK_CFG ; 
 struct bfa_lun_mask_s* FUNC0 (struct bfa_s*) ; 
 scalar_t__ FUNC1 (struct bfa_s*) ; 

void
FUNC2(struct bfa_s *bfa)
{
	struct bfa_lun_mask_s *lunm_list;
	int	i;

	if (FUNC1(bfa) == BFA_LUNMASK_MINCFG)
		return;

	lunm_list = FUNC0(bfa);
	for (i = 0; i < MAX_LUN_MASK_CFG; i++) {
		lunm_list[i].ua = BFA_IOIM_LM_UA_RESET;
		lunm_list[i].lp_tag = BFA_LP_TAG_INVALID;
		lunm_list[i].rp_tag = BFA_RPORT_TAG_INVALID;
	}
}
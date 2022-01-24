#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bfad_s {int dummy; } ;
struct bfa_fcs_itnim_s {TYPE_2__* fcs; int /*<<< orphan*/  bfa_itnim; TYPE_1__* rport; int /*<<< orphan*/  itnim_drv; } ;
typedef  enum bfa_fcs_itnim_event { ____Placeholder_bfa_fcs_itnim_event } bfa_fcs_itnim_event ;
struct TYPE_5__ {scalar_t__ bfad; } ;
struct TYPE_4__ {int pwwn; int /*<<< orphan*/  port; } ;

/* Variables and functions */
#define  BFA_FCS_ITNIM_SM_DELETE 130 
#define  BFA_FCS_ITNIM_SM_HCB_ONLINE 129 
#define  BFA_FCS_ITNIM_SM_OFFLINE 128 
 int /*<<< orphan*/  BFA_ITNIM_AEN_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bfad_s*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int BFA_STRING_32 ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_itnim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_itnim_s*) ; 
 int /*<<< orphan*/  bfa_fcs_itnim_sm_hcb_offline ; 
 int /*<<< orphan*/  bfa_fcs_itnim_sm_offline ; 
 int /*<<< orphan*/  bfa_fcs_itnim_sm_online ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfa_log_level ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bfa_fcs_itnim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 

__attribute__((used)) static void
FUNC10(struct bfa_fcs_itnim_s *itnim,
			    enum bfa_fcs_itnim_event event)
{
	struct bfad_s *bfad = (struct bfad_s *)itnim->fcs->bfad;
	char	lpwwn_buf[BFA_STRING_32];
	char	rpwwn_buf[BFA_STRING_32];

	FUNC8(itnim->fcs, itnim->rport->pwwn);
	FUNC8(itnim->fcs, event);

	switch (event) {
	case BFA_FCS_ITNIM_SM_HCB_ONLINE:
		FUNC7(itnim, bfa_fcs_itnim_sm_online);
		FUNC1(itnim->itnim_drv);
		FUNC9(lpwwn_buf, FUNC4(itnim->rport->port));
		FUNC9(rpwwn_buf, itnim->rport->pwwn);
		FUNC0(KERN_INFO, bfad, bfa_log_level,
		"Target (WWN = %s) is online for initiator (WWN = %s)\n",
		rpwwn_buf, lpwwn_buf);
		FUNC2(itnim, BFA_ITNIM_AEN_ONLINE);
		break;

	case BFA_FCS_ITNIM_SM_OFFLINE:
		FUNC7(itnim, bfa_fcs_itnim_sm_hcb_offline);
		FUNC5(itnim->bfa_itnim);
		break;

	case BFA_FCS_ITNIM_SM_DELETE:
		FUNC7(itnim, bfa_fcs_itnim_sm_offline);
		FUNC3(itnim);
		break;

	default:
		FUNC6(itnim->fcs, event);
	}
}
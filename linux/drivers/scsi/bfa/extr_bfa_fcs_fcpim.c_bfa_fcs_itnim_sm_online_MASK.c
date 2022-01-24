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
struct bfa_fcs_itnim_s {TYPE_2__* fcs; TYPE_1__* rport; int /*<<< orphan*/  bfa_itnim; int /*<<< orphan*/  itnim_drv; } ;
typedef  enum bfa_fcs_itnim_event { ____Placeholder_bfa_fcs_itnim_event } bfa_fcs_itnim_event ;
struct TYPE_5__ {scalar_t__ bfad; } ;
struct TYPE_4__ {int pwwn; int /*<<< orphan*/  port; } ;

/* Variables and functions */
#define  BFA_FCS_ITNIM_SM_DELETE 129 
#define  BFA_FCS_ITNIM_SM_OFFLINE 128 
 int /*<<< orphan*/  BFA_ITNIM_AEN_DISCONNECT ; 
 int /*<<< orphan*/  BFA_ITNIM_AEN_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bfad_s*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int BFA_STRING_32 ; 
 int /*<<< orphan*/  BFA_TRUE ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_itnim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_itnim_s*) ; 
 int /*<<< orphan*/  bfa_fcs_itnim_sm_hcb_offline ; 
 int /*<<< orphan*/  bfa_fcs_itnim_sm_offline ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfa_log_level ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bfa_fcs_itnim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 

__attribute__((used)) static void
FUNC11(struct bfa_fcs_itnim_s *itnim,
		 enum bfa_fcs_itnim_event event)
{
	struct bfad_s *bfad = (struct bfad_s *)itnim->fcs->bfad;
	char	lpwwn_buf[BFA_STRING_32];
	char	rpwwn_buf[BFA_STRING_32];

	FUNC9(itnim->fcs, itnim->rport->pwwn);
	FUNC9(itnim->fcs, event);

	switch (event) {
	case BFA_FCS_ITNIM_SM_OFFLINE:
		FUNC8(itnim, bfa_fcs_itnim_sm_hcb_offline);
		FUNC1(itnim->itnim_drv);
		FUNC6(itnim->bfa_itnim);
		FUNC10(lpwwn_buf, FUNC4(itnim->rport->port));
		FUNC10(rpwwn_buf, itnim->rport->pwwn);
		if (FUNC5(itnim->rport->port) == BFA_TRUE) {
			FUNC0(KERN_ERR, bfad, bfa_log_level,
			"Target (WWN = %s) connectivity lost for "
			"initiator (WWN = %s)\n", rpwwn_buf, lpwwn_buf);
			FUNC2(itnim, BFA_ITNIM_AEN_DISCONNECT);
		} else {
			FUNC0(KERN_INFO, bfad, bfa_log_level,
			"Target (WWN = %s) offlined by initiator (WWN = %s)\n",
			rpwwn_buf, lpwwn_buf);
			FUNC2(itnim, BFA_ITNIM_AEN_OFFLINE);
		}
		break;

	case BFA_FCS_ITNIM_SM_DELETE:
		FUNC8(itnim, bfa_fcs_itnim_sm_offline);
		FUNC3(itnim);
		break;

	default:
		FUNC7(itnim->fcs, event);
	}
}
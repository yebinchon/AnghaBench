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
struct bfa_fcs_itnim_s {TYPE_1__* fcs; TYPE_2__* rport; int /*<<< orphan*/  seq_rec; int /*<<< orphan*/  bfa_itnim; } ;
typedef  enum bfa_fcs_itnim_event { ____Placeholder_bfa_fcs_itnim_event } bfa_fcs_itnim_event ;
struct TYPE_5__ {int pwwn; int /*<<< orphan*/  bfa_rport; } ;
struct TYPE_4__ {int /*<<< orphan*/  bfa; } ;

/* Variables and functions */
#define  BFA_FCS_ITNIM_SM_DELETE 130 
#define  BFA_FCS_ITNIM_SM_HAL_ONLINE 129 
#define  BFA_FCS_ITNIM_SM_OFFLINE 128 
 int /*<<< orphan*/  RPSM_EVENT_DELETE ; 
 int /*<<< orphan*/  RPSM_EVENT_FC4_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_itnim_s*) ; 
 int /*<<< orphan*/  bfa_fcs_itnim_sm_hcb_online ; 
 int /*<<< orphan*/  bfa_fcs_itnim_sm_offline ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bfa_fcs_itnim_s*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcs_itnim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC7(struct bfa_fcs_itnim_s *itnim,
				enum bfa_fcs_itnim_event event)
{
	FUNC6(itnim->fcs, itnim->rport->pwwn);
	FUNC6(itnim->fcs, event);

	switch (event) {
	case BFA_FCS_ITNIM_SM_HAL_ONLINE:
		if (!itnim->bfa_itnim)
			itnim->bfa_itnim = FUNC1(itnim->fcs->bfa,
					itnim->rport->bfa_rport, itnim);

		if (itnim->bfa_itnim) {
			FUNC5(itnim, bfa_fcs_itnim_sm_hcb_online);
			FUNC2(itnim->bfa_itnim, itnim->seq_rec);
		} else {
			FUNC5(itnim, bfa_fcs_itnim_sm_offline);
			FUNC4(itnim->rport, RPSM_EVENT_DELETE);
		}

		break;

	case BFA_FCS_ITNIM_SM_OFFLINE:
		FUNC5(itnim, bfa_fcs_itnim_sm_offline);
		FUNC4(itnim->rport, RPSM_EVENT_FC4_OFFLINE);
		break;

	case BFA_FCS_ITNIM_SM_DELETE:
		FUNC5(itnim, bfa_fcs_itnim_sm_offline);
		FUNC0(itnim);
		break;

	default:
		FUNC3(itnim->fcs, event);
	}
}
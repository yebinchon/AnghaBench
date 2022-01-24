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
struct bfa_ioim_s {int /*<<< orphan*/  bfa; int /*<<< orphan*/  hcb_qe; TYPE_2__* itnim; int /*<<< orphan*/  nsges; int /*<<< orphan*/  qe; TYPE_1__* fcpim; } ;
typedef  enum bfa_ioim_event { ____Placeholder_bfa_ioim_event } bfa_ioim_event ;
struct TYPE_5__ {int /*<<< orphan*/  pending_q; } ;
struct TYPE_4__ {int /*<<< orphan*/  ioim_comp_q; } ;

/* Variables and functions */
#define  BFA_IOIM_SM_ABORT 130 
#define  BFA_IOIM_SM_IOTOV 129 
#define  BFA_IOIM_SM_START 128 
 int /*<<< orphan*/  BFI_SGE_INLINE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  __bfa_cb_ioim_abort ; 
 int /*<<< orphan*/  __bfa_cb_ioim_pathtov ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  bfa_ioim_sm_active ; 
 int /*<<< orphan*/  bfa_ioim_sm_hcb ; 
 int /*<<< orphan*/  bfa_ioim_sm_qfull ; 
 int /*<<< orphan*/  bfa_ioim_sm_sgalloc ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bfa_ioim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(struct bfa_ioim_s *ioim, enum bfa_ioim_event event)
{
	switch (event) {
	case BFA_IOIM_SM_START:
		if (!FUNC6(ioim->itnim)) {
			if (!FUNC5(ioim->itnim)) {
				FUNC9(ioim, bfa_ioim_sm_hcb);
				FUNC11(&ioim->qe);
				FUNC10(&ioim->qe,
					&ioim->fcpim->ioim_comp_q);
				FUNC1(ioim->bfa, &ioim->hcb_qe,
						__bfa_cb_ioim_pathtov, ioim);
			} else {
				FUNC11(&ioim->qe);
				FUNC10(&ioim->qe,
					&ioim->itnim->pending_q);
			}
			break;
		}

		if (ioim->nsges > BFI_SGE_INLINE) {
			if (!FUNC4(ioim)) {
				FUNC9(ioim, bfa_ioim_sm_sgalloc);
				return;
			}
		}

		if (!FUNC3(ioim)) {
			FUNC9(ioim, bfa_ioim_sm_qfull);
			break;
		}

		FUNC9(ioim, bfa_ioim_sm_active);
		break;

	case BFA_IOIM_SM_IOTOV:
		FUNC9(ioim, bfa_ioim_sm_hcb);
		FUNC2(ioim);
		FUNC1(ioim->bfa, &ioim->hcb_qe,
				__bfa_cb_ioim_pathtov, ioim);
		break;

	case BFA_IOIM_SM_ABORT:
		/*
		 * IO in pending queue can get abort requests. Complete abort
		 * requests immediately.
		 */
		FUNC9(ioim, bfa_ioim_sm_hcb);
		FUNC0(!FUNC7(&ioim->itnim->pending_q, ioim));
		FUNC1(ioim->bfa, &ioim->hcb_qe,
			__bfa_cb_ioim_abort, ioim);
		break;

	default:
		FUNC8(ioim->bfa, event);
	}
}
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
struct bfi_itn_delete_req_s {int /*<<< orphan*/  mh; int /*<<< orphan*/  fw_handle; } ;
struct bfa_itnim_s {int /*<<< orphan*/  reqq; int /*<<< orphan*/  bfa; TYPE_1__* rport; int /*<<< orphan*/  reqq_wait; } ;
typedef  int /*<<< orphan*/  bfa_boolean_t ;
struct TYPE_2__ {int /*<<< orphan*/  fw_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  BFA_TRUE ; 
 int /*<<< orphan*/  BFI_ITN_H2I_DELETE_REQ ; 
 int /*<<< orphan*/  BFI_MC_ITN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct bfi_itn_delete_req_s* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_itnim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fw_delete ; 

__attribute__((used)) static bfa_boolean_t
FUNC6(struct bfa_itnim_s *itnim)
{
	struct bfi_itn_delete_req_s *m;

	/*
	 * check for room in queue to send request now
	 */
	m = FUNC1(itnim->bfa, itnim->reqq);
	if (!m) {
		FUNC3(itnim->bfa, itnim->reqq, &itnim->reqq_wait);
		return BFA_FALSE;
	}

	FUNC5(m->mh, BFI_MC_ITN, BFI_ITN_H2I_DELETE_REQ,
			FUNC0(itnim->bfa));
	m->fw_handle = itnim->rport->fw_handle;
	FUNC4(itnim, fw_delete);

	/*
	 * queue I/O message to firmware
	 */
	FUNC2(itnim->bfa, itnim->reqq, m->mh);
	return BFA_TRUE;
}
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
struct bfi_rport_delete_req_s {int /*<<< orphan*/  mh; int /*<<< orphan*/  fw_handle; } ;
struct bfa_rport_s {int /*<<< orphan*/  bfa; int /*<<< orphan*/  fw_handle; int /*<<< orphan*/  reqq_wait; } ;
typedef  int /*<<< orphan*/  bfa_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  BFA_REQQ_RPORT ; 
 int /*<<< orphan*/  BFA_TRUE ; 
 int /*<<< orphan*/  BFI_MC_RPORT ; 
 int /*<<< orphan*/  BFI_RPORT_H2I_DELETE_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct bfi_rport_delete_req_s* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfa_boolean_t
FUNC5(struct bfa_rport_s *rp)
{
	struct bfi_rport_delete_req_s *m;

	/*
	 * check for room in queue to send request now
	 */
	m = FUNC1(rp->bfa, BFA_REQQ_RPORT);
	if (!m) {
		FUNC3(rp->bfa, BFA_REQQ_RPORT, &rp->reqq_wait);
		return BFA_FALSE;
	}

	FUNC4(m->mh, BFI_MC_RPORT, BFI_RPORT_H2I_DELETE_REQ,
			FUNC0(rp->bfa));
	m->fw_handle = rp->fw_handle;

	/*
	 * queue I/O message to firmware
	 */
	FUNC2(rp->bfa, BFA_REQQ_RPORT, m->mh);
	return BFA_TRUE;
}
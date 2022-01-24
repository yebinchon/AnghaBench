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
struct bfi_diag_dport_req_s {int req; int /*<<< orphan*/  mh; void* payload; void* lpcnt; } ;
struct bfa_dport_s {int /*<<< orphan*/  bfa; int /*<<< orphan*/  payload; int /*<<< orphan*/  lpcnt; int /*<<< orphan*/  reqq_wait; } ;
typedef  enum bfi_dport_req { ____Placeholder_bfi_dport_req } bfi_dport_req ;
typedef  int /*<<< orphan*/  bfa_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  BFA_REQQ_DIAG ; 
 int /*<<< orphan*/  BFA_REQQ_PORT ; 
 int /*<<< orphan*/  BFA_TRUE ; 
 int /*<<< orphan*/  BFI_DIAG_H2I_DPORT ; 
 int BFI_DPORT_ENABLE ; 
 int BFI_DPORT_START ; 
 int /*<<< orphan*/  BFI_MC_DIAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct bfi_diag_dport_req_s* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfa_boolean_t
FUNC6(struct bfa_dport_s *dport, enum bfi_dport_req req)
{
	struct bfi_diag_dport_req_s *m;

	/*
	 * check for room in queue to send request now
	 */
	m = FUNC1(dport->bfa, BFA_REQQ_DIAG);
	if (!m) {
		FUNC3(dport->bfa, BFA_REQQ_PORT, &dport->reqq_wait);
		return BFA_FALSE;
	}

	FUNC4(m->mh, BFI_MC_DIAG, BFI_DIAG_H2I_DPORT,
		    FUNC0(dport->bfa));
	m->req  = req;
	if ((req == BFI_DPORT_ENABLE) || (req == BFI_DPORT_START)) {
		m->lpcnt = FUNC5(dport->lpcnt);
		m->payload = FUNC5(dport->payload);
	}

	/*
	 * queue I/O message to firmware
	 */
	FUNC2(dport->bfa, BFA_REQQ_DIAG, m->mh);

	return BFA_TRUE;
}
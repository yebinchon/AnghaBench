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
struct bfi_fcport_req_s {int /*<<< orphan*/  mh; scalar_t__ msgtag; } ;
struct bfa_fcport_s {int /*<<< orphan*/  bfa; scalar_t__ msgtag; int /*<<< orphan*/  reqq_wait; } ;
typedef  int /*<<< orphan*/  bfa_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  BFA_REQQ_PORT ; 
 int /*<<< orphan*/  BFA_TRUE ; 
 int /*<<< orphan*/  BFI_FCPORT_H2I_DISABLE_REQ ; 
 int /*<<< orphan*/  BFI_MC_FCPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct bfi_fcport_req_s* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static	bfa_boolean_t
FUNC5(struct bfa_fcport_s *fcport)
{
	struct bfi_fcport_req_s *m;

	/*
	 * Increment message tag before queue check, so that responses to old
	 * requests are discarded.
	 */
	fcport->msgtag++;

	/*
	 * check for room in queue to send request now
	 */
	m = FUNC1(fcport->bfa, BFA_REQQ_PORT);
	if (!m) {
		FUNC3(fcport->bfa, BFA_REQQ_PORT,
							&fcport->reqq_wait);
		return BFA_FALSE;
	}

	FUNC4(m->mh, BFI_MC_FCPORT, BFI_FCPORT_H2I_DISABLE_REQ,
			FUNC0(fcport->bfa));
	m->msgtag = fcport->msgtag;

	/*
	 * queue I/O message to firmware
	 */
	FUNC2(fcport->bfa, BFA_REQQ_PORT, m->mh);

	return BFA_TRUE;
}
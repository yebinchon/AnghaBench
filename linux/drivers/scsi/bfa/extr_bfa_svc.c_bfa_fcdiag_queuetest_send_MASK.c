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
typedef  size_t u32 ;
struct bfi_diag_qtest_req_s {int /*<<< orphan*/  mh; int /*<<< orphan*/ * data; } ;
struct TYPE_2__ {int /*<<< orphan*/  queue; } ;
struct bfa_fcdiag_s {TYPE_1__ qtest; int /*<<< orphan*/  bfa; } ;
typedef  int /*<<< orphan*/  bfa_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_STATUS_DEVBUSY ; 
 int /*<<< orphan*/  BFA_STATUS_OK ; 
 int /*<<< orphan*/  BFI_DIAG_H2I_QTEST ; 
 size_t BFI_LMSG_PL_WSZ ; 
 int /*<<< orphan*/  BFI_MC_DIAG ; 
 int /*<<< orphan*/  QTEST_PAT_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct bfi_diag_qtest_req_s* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcdiag_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfa_status_t
FUNC5(struct bfa_fcdiag_s *fcdiag)
{
	u32	i;
	struct bfi_diag_qtest_req_s *req;

	req = FUNC1(fcdiag->bfa, fcdiag->qtest.queue);
	if (!req)
		return BFA_STATUS_DEVBUSY;

	/* build host command */
	FUNC4(req->mh, BFI_MC_DIAG, BFI_DIAG_H2I_QTEST,
		FUNC0(fcdiag->bfa));

	for (i = 0; i < BFI_LMSG_PL_WSZ; i++)
		req->data[i] = QTEST_PAT_DEFAULT;

	FUNC3(fcdiag, fcdiag->qtest.queue);
	/* ring door bell */
	FUNC2(fcdiag->bfa, fcdiag->qtest.queue, req->mh);
	return BFA_STATUS_OK;
}
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
struct bfi_diag_lb_req_s {int /*<<< orphan*/  mh; int /*<<< orphan*/  pattern; int /*<<< orphan*/  loopcnt; int /*<<< orphan*/  speed; int /*<<< orphan*/  lb_mode; } ;
struct bfa_fcdiag_s {int /*<<< orphan*/  bfa; } ;
struct bfa_diag_loopback_s {int /*<<< orphan*/  pattern; int /*<<< orphan*/  loopcnt; int /*<<< orphan*/  speed; int /*<<< orphan*/  lb_mode; } ;
typedef  int /*<<< orphan*/  bfa_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_REQQ_DIAG ; 
 int /*<<< orphan*/  BFA_STATUS_DEVBUSY ; 
 int /*<<< orphan*/  BFA_STATUS_OK ; 
 int /*<<< orphan*/  BFI_DIAG_H2I_LOOPBACK ; 
 int /*<<< orphan*/  BFI_MC_DIAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct bfi_diag_lb_req_s* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcdiag_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfa_status_t
FUNC5(struct bfa_fcdiag_s *fcdiag,
			struct bfa_diag_loopback_s *loopback)
{
	struct bfi_diag_lb_req_s *lb_req;

	lb_req = FUNC1(fcdiag->bfa, BFA_REQQ_DIAG);
	if (!lb_req)
		return BFA_STATUS_DEVBUSY;

	/* build host command */
	FUNC4(lb_req->mh, BFI_MC_DIAG, BFI_DIAG_H2I_LOOPBACK,
		FUNC0(fcdiag->bfa));

	lb_req->lb_mode = loopback->lb_mode;
	lb_req->speed = loopback->speed;
	lb_req->loopcnt = loopback->loopcnt;
	lb_req->pattern = loopback->pattern;

	/* ring door bell */
	FUNC2(fcdiag->bfa, BFA_REQQ_DIAG, lb_req->mh);

	FUNC3(fcdiag, loopback->lb_mode);
	FUNC3(fcdiag, loopback->speed);
	FUNC3(fcdiag, loopback->loopcnt);
	FUNC3(fcdiag, loopback->pattern);
	return BFA_STATUS_OK;
}
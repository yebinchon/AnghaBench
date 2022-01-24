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
struct bfi_sfp_req_s {int /*<<< orphan*/  mh; int /*<<< orphan*/  memtype; } ;
struct TYPE_2__ {scalar_t__ msg; } ;
struct bfa_sfp_s {TYPE_1__ mbcmd; int /*<<< orphan*/  ioc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_MC_SFP ; 
 int /*<<< orphan*/  BFI_SFP_H2I_SHOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_sfp_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bfa_sfp_s *sfp)
{
	struct bfi_sfp_req_s *req = (struct bfi_sfp_req_s *)sfp->mbcmd.msg;

	FUNC2(sfp, req->memtype);

	/* build host command */
	FUNC3(req->mh, BFI_MC_SFP, BFI_SFP_H2I_SHOW,
			FUNC1(sfp->ioc));

	/* send mbox cmd */
	FUNC0(sfp->ioc, &sfp->mbcmd);
}
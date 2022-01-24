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
struct bfi_ioc_ctrl_req_s {int /*<<< orphan*/  clscode; int /*<<< orphan*/  mh; } ;
struct bfa_mbox_cmd_s {scalar_t__ msg; } ;
struct bfa_ioc_s {int /*<<< orphan*/  clscode; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_IOC_H2I_DBG_SYNC ; 
 int /*<<< orphan*/  BFI_MC_IOC ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioc_s*,struct bfa_mbox_cmd_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc_s*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bfa_ioc_s *ioc)
{
	struct bfa_mbox_cmd_s cmd;
	struct bfi_ioc_ctrl_req_s *req = (struct bfi_ioc_ctrl_req_s *) cmd.msg;

	FUNC2(req->mh, BFI_MC_IOC, BFI_IOC_H2I_DBG_SYNC,
		    FUNC1(ioc));
	req->clscode = FUNC3(ioc->clscode);
	FUNC0(ioc, &cmd);
}
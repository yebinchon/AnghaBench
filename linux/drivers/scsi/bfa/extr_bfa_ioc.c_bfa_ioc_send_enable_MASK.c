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
struct bfi_ioc_ctrl_req_s {int /*<<< orphan*/  tv_sec; int /*<<< orphan*/  clscode; int /*<<< orphan*/  mh; } ;
struct bfa_ioc_s {int /*<<< orphan*/  clscode; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_IOC_H2I_ENABLE_REQ ; 
 int /*<<< orphan*/  BFI_MC_IOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc_s*,struct bfi_ioc_ctrl_req_s*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc_s*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6(struct bfa_ioc_s *ioc)
{
	struct bfi_ioc_ctrl_req_s enable_req;

	FUNC3(enable_req.mh, BFI_MC_IOC, BFI_IOC_H2I_ENABLE_REQ,
		    FUNC2(ioc));
	enable_req.clscode = FUNC4(ioc->clscode);
	/* unsigned 32-bit time_t overflow in y2106 */
	enable_req.tv_sec = FUNC0(FUNC5());
	FUNC1(ioc, &enable_req, sizeof(struct bfi_ioc_ctrl_req_s));
}
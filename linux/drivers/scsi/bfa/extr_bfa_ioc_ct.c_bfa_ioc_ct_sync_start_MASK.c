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
typedef  int uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  alt_ioc_fwstate; int /*<<< orphan*/  ioc_fwstate; int /*<<< orphan*/  ioc_usage_reg; int /*<<< orphan*/  ioc_fail_sync; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; } ;
typedef  int /*<<< orphan*/  bfa_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_TRUE ; 
 int BFI_IOC_UNINIT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc_s*) ; 
 int FUNC2 (struct bfa_ioc_s*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfa_boolean_t
FUNC5(struct bfa_ioc_s *ioc)
{
	uint32_t r32 = FUNC3(ioc->ioc_regs.ioc_fail_sync);
	uint32_t sync_reqd = FUNC0(r32);

	/*
	 * Driver load time.  If the sync required bit for this PCI fn
	 * is set, it is due to an unclean exit by the driver for this
	 * PCI fn in the previous incarnation. Whoever comes here first
	 * should clean it up, no matter which PCI fn.
	 */

	if (sync_reqd & FUNC2(ioc)) {
		FUNC4(0, ioc->ioc_regs.ioc_fail_sync);
		FUNC4(1, ioc->ioc_regs.ioc_usage_reg);
		FUNC4(BFI_IOC_UNINIT, ioc->ioc_regs.ioc_fwstate);
		FUNC4(BFI_IOC_UNINIT, ioc->ioc_regs.alt_ioc_fwstate);
		return BFA_TRUE;
	}

	return FUNC1(ioc);
}
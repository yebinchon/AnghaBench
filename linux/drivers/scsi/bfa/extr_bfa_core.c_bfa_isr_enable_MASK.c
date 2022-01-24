#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_10__ {scalar_t__ nvecs; } ;
struct TYPE_8__ {int /*<<< orphan*/  intr_mask; int /*<<< orphan*/  intr_status; } ;
struct TYPE_9__ {int /*<<< orphan*/  intr_mask; TYPE_2__ bfa_regs; } ;
struct TYPE_7__ {int /*<<< orphan*/  device_id; } ;
struct TYPE_11__ {TYPE_1__ pcidev; } ;
struct bfa_s {int /*<<< orphan*/  intr_enabled; TYPE_4__ msix; TYPE_3__ iocfc; TYPE_5__ ioc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_TRUE ; 
 int /*<<< orphan*/  __HFN_INT_ERR_MASK ; 
 int /*<<< orphan*/  __HFN_INT_ERR_MASK_CT2 ; 
 int /*<<< orphan*/  __HFN_INT_FN0_MASK ; 
 int /*<<< orphan*/  __HFN_INT_FN0_MASK_CT2 ; 
 int /*<<< orphan*/  __HFN_INT_FN1_MASK ; 
 int /*<<< orphan*/  __HFN_INT_FN1_MASK_CT2 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_5__*) ; 
 int FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_s*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_s*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7(struct bfa_s *bfa)
{
	u32 umsk;
	int port_id = FUNC2(&bfa->ioc);

	FUNC5(bfa, FUNC1(&bfa->ioc));
	FUNC5(bfa, port_id);

	FUNC4(bfa);

	if (FUNC0(bfa->ioc.pcidev.device_id)) {
		umsk = __HFN_INT_ERR_MASK_CT2;
		umsk |= port_id == 0 ?
			__HFN_INT_FN0_MASK_CT2 : __HFN_INT_FN1_MASK_CT2;
	} else {
		umsk = __HFN_INT_ERR_MASK;
		umsk |= port_id == 0 ? __HFN_INT_FN0_MASK : __HFN_INT_FN1_MASK;
	}

	FUNC6(umsk, bfa->iocfc.bfa_regs.intr_status);
	FUNC6(~umsk, bfa->iocfc.bfa_regs.intr_mask);
	bfa->iocfc.intr_mask = ~umsk;
	FUNC3(bfa, bfa->msix.nvecs != 0);

	/*
	 * Set the flag indicating successful enabling of interrupts
	 */
	bfa->intr_enabled = BFA_TRUE;
}
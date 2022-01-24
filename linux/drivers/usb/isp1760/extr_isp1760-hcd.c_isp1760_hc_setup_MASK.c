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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {int /*<<< orphan*/  regs; TYPE_1__ self; } ;
struct isp1760_hcd {int hcs_params; } ;

/* Variables and functions */
 int ALL_ATX_RESET ; 
 int ENODEV ; 
 int /*<<< orphan*/  HC_ATL_PTD_SKIPMAP_REG ; 
 int /*<<< orphan*/  HC_BUFFER_STATUS_REG ; 
 int /*<<< orphan*/  HC_CHIP_ID_REG ; 
 int /*<<< orphan*/  HC_HCSPARAMS ; 
 int /*<<< orphan*/  HC_HW_MODE_CTRL ; 
 int /*<<< orphan*/  HC_INTERRUPT_ENABLE ; 
 int /*<<< orphan*/  HC_INT_PTD_SKIPMAP_REG ; 
 int /*<<< orphan*/  HC_ISO_PTD_SKIPMAP_REG ; 
 int /*<<< orphan*/  HC_SCRATCH_REG ; 
 int INTERRUPT_ENABLE_MASK ; 
 int NO_TRANSFER_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct usb_hcd*) ; 
 struct isp1760_hcd* FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct usb_hcd*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct usb_hcd *hcd)
{
	struct isp1760_hcd *priv = FUNC2(hcd);
	int result;
	u32 scratch, hwmode;

	FUNC6(hcd->regs, HC_SCRATCH_REG, 0xdeadbabe);
	/* Change bus pattern */
	scratch = FUNC5(hcd->regs, HC_CHIP_ID_REG);
	scratch = FUNC5(hcd->regs, HC_SCRATCH_REG);
	if (scratch != 0xdeadbabe) {
		FUNC0(hcd->self.controller, "Scratch test failed.\n");
		return -ENODEV;
	}

	/*
	 * The RESET_HC bit in the SW_RESET register is supposed to reset the
	 * host controller without touching the CPU interface registers, but at
	 * least on the ISP1761 it seems to behave as the RESET_ALL bit and
	 * reset the whole device. We thus can't use it here, so let's reset
	 * the host controller through the EHCI USB Command register. The device
	 * has been reset in core code anyway, so this shouldn't matter.
	 */
	FUNC6(hcd->regs, HC_BUFFER_STATUS_REG, 0);
	FUNC6(hcd->regs, HC_ATL_PTD_SKIPMAP_REG, NO_TRANSFER_ACTIVE);
	FUNC6(hcd->regs, HC_INT_PTD_SKIPMAP_REG, NO_TRANSFER_ACTIVE);
	FUNC6(hcd->regs, HC_ISO_PTD_SKIPMAP_REG, NO_TRANSFER_ACTIVE);

	result = FUNC1(hcd);
	if (result)
		return result;

	/* Step 11 passed */

	/* ATL reset */
	hwmode = FUNC5(hcd->regs, HC_HW_MODE_CTRL) & ~ALL_ATX_RESET;
	FUNC6(hcd->regs, HC_HW_MODE_CTRL, hwmode | ALL_ATX_RESET);
	FUNC3(10);
	FUNC6(hcd->regs, HC_HW_MODE_CTRL, hwmode);

	FUNC6(hcd->regs, HC_INTERRUPT_ENABLE, INTERRUPT_ENABLE_MASK);

	priv->hcs_params = FUNC5(hcd->regs, HC_HCSPARAMS);

	return FUNC4(hcd);
}
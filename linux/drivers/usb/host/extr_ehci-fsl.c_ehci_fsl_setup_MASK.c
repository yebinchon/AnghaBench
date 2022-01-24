#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct device* controller; } ;
struct usb_hcd {int has_tt; scalar_t__ regs; TYPE_1__ self; } ;
struct fsl_usb2_platform_data {int /*<<< orphan*/  big_endian_mmio; int /*<<< orphan*/  big_endian_desc; } ;
struct ehci_hcd {int need_oc_pp_cycle; scalar_t__ caps; int /*<<< orphan*/  big_endian_mmio; int /*<<< orphan*/  big_endian_desc; } ;
struct device {TYPE_2__* parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 scalar_t__ FSL_SOC_USB_SBUSCFG ; 
 int /*<<< orphan*/  SBUSCFG_INCR8 ; 
 struct fsl_usb2_platform_data* FUNC0 (struct device*) ; 
 int FUNC1 (struct ehci_hcd*) ; 
 int FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct ehci_hcd*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct ehci_hcd* FUNC4 (struct usb_hcd*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct usb_hcd *hcd)
{
	struct ehci_hcd *ehci = FUNC4(hcd);
	int retval;
	struct fsl_usb2_platform_data *pdata;
	struct device *dev;

	dev = hcd->self.controller;
	pdata = FUNC0(hcd->self.controller);
	ehci->big_endian_desc = pdata->big_endian_desc;
	ehci->big_endian_mmio = pdata->big_endian_mmio;

	/* EHCI registers start at offset 0x100 */
	ehci->caps = hcd->regs + 0x100;

#ifdef CONFIG_PPC_83xx
	/*
	 * Deal with MPC834X that need port power to be cycled after the power
	 * fault condition is removed. Otherwise the state machine does not
	 * reflect PORTSC[CSC] correctly.
	 */
	ehci->need_oc_pp_cycle = 1;
#endif

	hcd->has_tt = 1;

	retval = FUNC2(hcd);
	if (retval)
		return retval;

	if (FUNC5(dev->parent->of_node,
				    "fsl,mpc5121-usb2-dr")) {
		/*
		 * set SBUSCFG:AHBBRST so that control msgs don't
		 * fail when doing heavy PATA writes.
		 */
		FUNC3(ehci, SBUSCFG_INCR8,
			    hcd->regs + FSL_SOC_USB_SBUSCFG);
	}

	retval = FUNC1(ehci);
	return retval;
}
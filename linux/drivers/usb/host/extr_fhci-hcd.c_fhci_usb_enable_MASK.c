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
typedef  int /*<<< orphan*/  u32 ;
struct fhci_usb {int saved_msk; TYPE_2__* fhci; } ;
struct fhci_hcd {struct fhci_usb* usb_lld; } ;
struct TYPE_4__ {TYPE_1__* regs; } ;
struct TYPE_3__ {int /*<<< orphan*/  usb_usmod; int /*<<< orphan*/  usb_usbmr; int /*<<< orphan*/  usb_usber; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_MODE_EN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC3(struct fhci_hcd *fhci)
{
	struct fhci_usb *usb = fhci->usb_lld;

	FUNC1(&usb->fhci->regs->usb_usber, 0xffff);
	FUNC1(&usb->fhci->regs->usb_usbmr, usb->saved_msk);
	FUNC2(&usb->fhci->regs->usb_usmod, USB_MODE_EN);

	FUNC0(100);

	return 0;
}
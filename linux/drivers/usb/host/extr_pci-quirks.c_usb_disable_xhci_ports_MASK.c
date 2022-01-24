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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_INTEL_USB3_PSSEN ; 
 int /*<<< orphan*/  USB_INTEL_XUSB2PR ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

void FUNC1(struct pci_dev *xhci_pdev)
{
	FUNC0(xhci_pdev, USB_INTEL_USB3_PSSEN, 0x0);
	FUNC0(xhci_pdev, USB_INTEL_XUSB2PR, 0x0);
}
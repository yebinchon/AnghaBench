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
typedef  int uint32_t ;
struct usb_hcd {int /*<<< orphan*/  self; } ;
struct pxaohci_platform_data {int /*<<< orphan*/  (* exit ) (struct device*) ;} ;
struct pxa27x_ohci {int /*<<< orphan*/  clk; scalar_t__ mmio_base; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ UHCCOMS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 struct usb_hcd* FUNC4 (struct device*) ; 
 struct pxaohci_platform_data* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct pxa27x_ohci*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct pxa27x_ohci *pxa_ohci, struct device *dev)
{
	struct pxaohci_platform_data *inf;
	struct usb_hcd *hcd = FUNC4(dev);
	uint32_t uhccoms;

	inf = FUNC5(dev);

	if (FUNC3())
		FUNC7(&hcd->self);

	if (inf->exit)
		inf->exit(dev);

	FUNC6(pxa_ohci);

	/* Host Controller Reset */
	uhccoms = FUNC0(pxa_ohci->mmio_base + UHCCOMS) | 0x01;
	FUNC1(uhccoms, pxa_ohci->mmio_base + UHCCOMS);
	FUNC9(10);

	FUNC2(pxa_ohci->clk);
}
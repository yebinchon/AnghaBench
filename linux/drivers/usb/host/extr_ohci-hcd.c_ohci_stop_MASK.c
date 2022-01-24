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
struct TYPE_4__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_2__ self; scalar_t__ localmem_pool; scalar_t__ irq; } ;
struct ohci_hcd {scalar_t__ hcca_dma; int /*<<< orphan*/ * hcca; TYPE_1__* regs; int /*<<< orphan*/  prev_frame_no; int /*<<< orphan*/  io_watchdog; int /*<<< orphan*/  nec_work; } ;
struct TYPE_3__ {int /*<<< orphan*/  intrdisable; } ;

/* Variables and functions */
 int /*<<< orphan*/  IO_WATCHDOG_OFF ; 
 int /*<<< orphan*/  OHCI_INTR_MIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,unsigned long,int) ; 
 struct ohci_hcd* FUNC5 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (struct ohci_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (struct ohci_hcd*) ; 
 int /*<<< orphan*/  FUNC8 (struct ohci_hcd*) ; 
 int /*<<< orphan*/  FUNC9 (struct ohci_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct ohci_hcd*) ; 
 scalar_t__ FUNC11 (struct ohci_hcd*) ; 
 int /*<<< orphan*/  FUNC12 (struct ohci_hcd*) ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static void FUNC14 (struct usb_hcd *hcd)
{
	struct ohci_hcd		*ohci = FUNC5 (hcd);

	FUNC6(ohci);

	if (FUNC11(ohci))
		FUNC2(&ohci->nec_work);
	FUNC0(&ohci->io_watchdog);
	ohci->prev_frame_no = IO_WATCHDOG_OFF;

	FUNC9 (ohci, OHCI_INTR_MIE, &ohci->regs->intrdisable);
	FUNC8(ohci);
	FUNC3(hcd->irq, hcd);
	hcd->irq = 0;

	if (FUNC10(ohci))
		FUNC13();

	FUNC12 (ohci);
	FUNC7 (ohci);
	if (ohci->hcca) {
		if (hcd->localmem_pool)
			FUNC4(hcd->localmem_pool,
				      (unsigned long)ohci->hcca,
				      sizeof(*ohci->hcca));
		else
			FUNC1(hcd->self.controller,
					  sizeof(*ohci->hcca),
					  ohci->hcca, ohci->hcca_dma);
		ohci->hcca = NULL;
		ohci->hcca_dma = 0;
	}
}
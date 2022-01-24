#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {int uses_new_polling; int /*<<< orphan*/  flags; TYPE_2__ self; } ;
struct ohci_hcd {int fminterval; int hc_control; int flags; int /*<<< orphan*/  lock; scalar_t__ next_statechange; TYPE_3__* regs; int /*<<< orphan*/  rh_state; scalar_t__ hcca_dma; int /*<<< orphan*/  hcca; } ;
struct ohci_hcca {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  b; int /*<<< orphan*/  status; int /*<<< orphan*/  a; } ;
struct TYPE_6__ {int /*<<< orphan*/  control; TYPE_1__ roothub; int /*<<< orphan*/  intrenable; int /*<<< orphan*/  intrstatus; int /*<<< orphan*/  periodicstart; int /*<<< orphan*/  fminterval; int /*<<< orphan*/  hcca; int /*<<< orphan*/  ed_bulkhead; int /*<<< orphan*/  ed_controlhead; int /*<<< orphan*/  cmdstatus; } ;

/* Variables and functions */
 int EOVERFLOW ; 
 int FI ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  HCD_FLAG_POLL_RH ; 
 int const OHCI_CONTROL_INIT ; 
 int OHCI_CTRL_HCFS ; 
 int OHCI_CTRL_RWC ; 
 int OHCI_HCR ; 
 int OHCI_INTR_INIT ; 
 int OHCI_QUIRK_AMD756 ; 
 int OHCI_QUIRK_HUB_POWER ; 
 int OHCI_QUIRK_INITRESET ; 
 int OHCI_QUIRK_SUPERIO ; 
 int /*<<< orphan*/  OHCI_RH_HALTED ; 
 int /*<<< orphan*/  OHCI_RH_RUNNING ; 
#define  OHCI_USB_OPER 130 
 int OHCI_USB_RESET ; 
#define  OHCI_USB_RESUME 129 
#define  OHCI_USB_SUSPEND 128 
 int RH_A_NOCP ; 
 int RH_A_NPS ; 
 int RH_A_OCPM ; 
 int RH_A_POTPGT ; 
 int RH_A_PSM ; 
 int RH_B_PPCM ; 
 int RH_HS_DRWE ; 
 int RH_HS_LPSC ; 
 scalar_t__ STATECHANGE_DELAY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ohci_hcd*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct ohci_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (struct ohci_hcd*,char*,...) ; 
 int FUNC8 (struct ohci_hcd*,int /*<<< orphan*/ *) ; 
 struct usb_hcd* FUNC9 (struct ohci_hcd*) ; 
 int /*<<< orphan*/  FUNC10 (struct ohci_hcd*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct ohci_hcd*) ; 
 int FUNC12 (struct ohci_hcd*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

__attribute__((used)) static int FUNC17 (struct ohci_hcd *ohci)
{
	u32			mask, val;
	int			first = ohci->fminterval == 0;
	struct usb_hcd		*hcd = FUNC9(ohci);

	ohci->rh_state = OHCI_RH_HALTED;

	/* boot firmware should have set this up (5.1.1.3.1) */
	if (first) {

		val = FUNC8 (ohci, &ohci->regs->fminterval);
		ohci->fminterval = val & 0x3fff;
		if (ohci->fminterval != FI)
			FUNC5 (ohci, "fminterval delta %d\n",
				ohci->fminterval - FI);
		ohci->fminterval |= FUNC0 (ohci->fminterval) << 16;
		/* also: power/overcurrent flags in roothub.a */
	}

	/* Reset USB nearly "by the book".  RemoteWakeupConnected has
	 * to be checked in case boot firmware (BIOS/SMM/...) has set up
	 * wakeup in a way the bus isn't aware of (e.g., legacy PCI PM).
	 * If the bus glue detected wakeup capability then it should
	 * already be enabled; if so we'll just enable it again.
	 */
	if ((ohci->hc_control & OHCI_CTRL_RWC) != 0)
		FUNC1(hcd->self.controller, 1);

	switch (ohci->hc_control & OHCI_CTRL_HCFS) {
	case OHCI_USB_OPER:
		val = 0;
		break;
	case OHCI_USB_SUSPEND:
	case OHCI_USB_RESUME:
		ohci->hc_control &= OHCI_CTRL_RWC;
		ohci->hc_control |= OHCI_USB_RESUME;
		val = 10 /* msec wait */;
		break;
	// case OHCI_USB_RESET:
	default:
		ohci->hc_control &= OHCI_CTRL_RWC;
		ohci->hc_control |= OHCI_USB_RESET;
		val = 50 /* msec wait */;
		break;
	}
	FUNC10 (ohci, ohci->hc_control, &ohci->regs->control);
	// flush the writes
	(void) FUNC8 (ohci, &ohci->regs->control);
	FUNC4(val);

	FUNC3 (ohci->hcca, 0, sizeof (struct ohci_hcca));

	/* 2msec timelimit here means no irqs/preempt */
	FUNC14 (&ohci->lock);

retry:
	/* HC Reset requires max 10 us delay */
	FUNC10 (ohci, OHCI_HCR,  &ohci->regs->cmdstatus);
	val = 30;	/* ... allow extra time */
	while ((FUNC8 (ohci, &ohci->regs->cmdstatus) & OHCI_HCR) != 0) {
		if (--val == 0) {
			FUNC15 (&ohci->lock);
			FUNC7 (ohci, "USB HC reset timed out!\n");
			return -1;
		}
		FUNC16 (1);
	}

	/* now we're in the SUSPEND state ... must go OPERATIONAL
	 * within 2msec else HC enters RESUME
	 *
	 * ... but some hardware won't init fmInterval "by the book"
	 * (SiS, OPTi ...), so reset again instead.  SiS doesn't need
	 * this if we write fmInterval after we're OPERATIONAL.
	 * Unclear about ALi, ServerWorks, and others ... this could
	 * easily be a longstanding bug in chip init on Linux.
	 */
	if (ohci->flags & OHCI_QUIRK_INITRESET) {
		FUNC10 (ohci, ohci->hc_control, &ohci->regs->control);
		// flush those writes
		(void) FUNC8 (ohci, &ohci->regs->control);
	}

	/* Tell the controller where the control and bulk lists are
	 * The lists are empty now. */
	FUNC10 (ohci, 0, &ohci->regs->ed_controlhead);
	FUNC10 (ohci, 0, &ohci->regs->ed_bulkhead);

	/* a reset clears this */
	FUNC10 (ohci, (u32) ohci->hcca_dma, &ohci->regs->hcca);

	FUNC11 (ohci);

	/* some OHCI implementations are finicky about how they init.
	 * bogus values here mean not even enumeration could work.
	 */
	if ((FUNC8 (ohci, &ohci->regs->fminterval) & 0x3fff0000) == 0
			|| !FUNC8 (ohci, &ohci->regs->periodicstart)) {
		if (!(ohci->flags & OHCI_QUIRK_INITRESET)) {
			ohci->flags |= OHCI_QUIRK_INITRESET;
			FUNC5 (ohci, "enabling initreset quirk\n");
			goto retry;
		}
		FUNC15 (&ohci->lock);
		FUNC7 (ohci, "init err (%08x %04x)\n",
			FUNC8 (ohci, &ohci->regs->fminterval),
			FUNC8 (ohci, &ohci->regs->periodicstart));
		return -EOVERFLOW;
	}

	/* use rhsc irqs after hub_wq is allocated */
	FUNC13(HCD_FLAG_POLL_RH, &hcd->flags);
	hcd->uses_new_polling = 1;

	/* start controller operations */
	ohci->hc_control &= OHCI_CTRL_RWC;
	ohci->hc_control |= OHCI_CONTROL_INIT | OHCI_USB_OPER;
	FUNC10 (ohci, ohci->hc_control, &ohci->regs->control);
	ohci->rh_state = OHCI_RH_RUNNING;

	/* wake on ConnectStatusChange, matching external hubs */
	FUNC10 (ohci, RH_HS_DRWE, &ohci->regs->roothub.status);

	/* Choose the interrupts we care about now, others later on demand */
	mask = OHCI_INTR_INIT;
	FUNC10 (ohci, ~0, &ohci->regs->intrstatus);
	FUNC10 (ohci, mask, &ohci->regs->intrenable);

	/* handle root hub init quirks ... */
	val = FUNC12 (ohci);
	val &= ~(RH_A_PSM | RH_A_OCPM);
	if (ohci->flags & OHCI_QUIRK_SUPERIO) {
		/* NSC 87560 and maybe others */
		val |= RH_A_NOCP;
		val &= ~(RH_A_POTPGT | RH_A_NPS);
		FUNC10 (ohci, val, &ohci->regs->roothub.a);
	} else if ((ohci->flags & OHCI_QUIRK_AMD756) ||
			(ohci->flags & OHCI_QUIRK_HUB_POWER)) {
		/* hub power always on; required for AMD-756 and some
		 * Mac platforms.  ganged overcurrent reporting, if any.
		 */
		val |= RH_A_NPS;
		FUNC10 (ohci, val, &ohci->regs->roothub.a);
	}
	FUNC10 (ohci, RH_HS_LPSC, &ohci->regs->roothub.status);
	FUNC10 (ohci, (val & RH_A_NPS) ? 0 : RH_B_PPCM,
						&ohci->regs->roothub.b);
	// flush those writes
	(void) FUNC8 (ohci, &ohci->regs->control);

	ohci->next_statechange = jiffies + STATECHANGE_DELAY;
	FUNC15 (&ohci->lock);

	// POTPGT delay is bits 24-31, in 2 ms units.
	FUNC2 ((val >> 23) & 0x1fe);

	FUNC6(ohci);

	return 0;
}
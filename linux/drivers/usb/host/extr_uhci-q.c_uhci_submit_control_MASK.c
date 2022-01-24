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
struct urb_priv {int dummy; } ;
struct urb {int transfer_buffer_length; int transfer_dma; unsigned long pipe; int setup_dma; TYPE_2__* dev; struct urb_priv* hcpriv; } ;
struct uhci_td {int /*<<< orphan*/  status; int /*<<< orphan*/  link; } ;
struct uhci_qh {scalar_t__ state; int skel; struct uhci_td* dummy_td; TYPE_1__* hep; } ;
struct uhci_hcd {int dummy; } ;
typedef  int dma_addr_t ;
typedef  int /*<<< orphan*/  __hc32 ;
struct TYPE_4__ {scalar_t__ speed; scalar_t__ state; } ;
struct TYPE_3__ {int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct uhci_hcd*,struct uhci_td*) ; 
 unsigned long PIPE_DEVEP_MASK ; 
 scalar_t__ QH_STATE_ACTIVE ; 
 int SKEL_FS_CONTROL ; 
 int SKEL_LS_CONTROL ; 
 unsigned long TD_CTRL_ACTIVE ; 
 unsigned long TD_CTRL_IOC ; 
 unsigned long TD_CTRL_LS ; 
 unsigned long TD_CTRL_SPD ; 
 unsigned long TD_TOKEN_TOGGLE ; 
 unsigned long USB_PID_IN ; 
 unsigned long USB_PID_OUT ; 
 unsigned long USB_PID_SETUP ; 
 scalar_t__ USB_SPEED_LOW ; 
 scalar_t__ USB_STATE_CONFIGURED ; 
 int /*<<< orphan*/  FUNC1 (struct uhci_hcd*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct uhci_hcd*,struct urb*) ; 
 int /*<<< orphan*/  FUNC3 (struct uhci_td*,struct urb_priv*) ; 
 struct uhci_td* FUNC4 (struct uhci_hcd*) ; 
 unsigned long FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct uhci_hcd*,struct uhci_td*,unsigned long,unsigned long,int) ; 
 unsigned long FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct uhci_td*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int FUNC12(struct uhci_hcd *uhci, struct urb *urb,
		struct uhci_qh *qh)
{
	struct uhci_td *td;
	unsigned long destination, status;
	int maxsze = FUNC9(&qh->hep->desc);
	int len = urb->transfer_buffer_length;
	dma_addr_t data = urb->transfer_dma;
	__hc32 *plink;
	struct urb_priv *urbp = urb->hcpriv;
	int skel;

	/* The "pipe" thing contains the destination in bits 8--18 */
	destination = (urb->pipe & PIPE_DEVEP_MASK) | USB_PID_SETUP;

	/* 3 errors, dummy TD remains inactive */
	status = FUNC7(3);
	if (urb->dev->speed == USB_SPEED_LOW)
		status |= TD_CTRL_LS;

	/*
	 * Build the TD for the control request setup packet
	 */
	td = qh->dummy_td;
	FUNC3(td, urbp);
	FUNC6(uhci, td, status, destination | FUNC5(8),
			urb->setup_dma);
	plink = &td->link;
	status |= TD_CTRL_ACTIVE;

	/*
	 * If direction is "send", change the packet ID from SETUP (0x2D)
	 * to OUT (0xE1).  Else change it from SETUP to IN (0x69) and
	 * set Short Packet Detect (SPD) for all data packets.
	 *
	 * 0-length transfers always get treated as "send".
	 */
	if (FUNC10(urb->pipe) || len == 0)
		destination ^= (USB_PID_SETUP ^ USB_PID_OUT);
	else {
		destination ^= (USB_PID_SETUP ^ USB_PID_IN);
		status |= TD_CTRL_SPD;
	}

	/*
	 * Build the DATA TDs
	 */
	while (len > 0) {
		int pktsze = maxsze;

		if (len <= pktsze) {		/* The last data packet */
			pktsze = len;
			status &= ~TD_CTRL_SPD;
		}

		td = FUNC4(uhci);
		if (!td)
			goto nomem;
		*plink = FUNC0(uhci, td);

		/* Alternate Data0/1 (start with Data1) */
		destination ^= TD_TOKEN_TOGGLE;

		FUNC3(td, urbp);
		FUNC6(uhci, td, status,
			destination | FUNC5(pktsze), data);
		plink = &td->link;

		data += pktsze;
		len -= pktsze;
	}

	/*
	 * Build the final TD for control status
	 */
	td = FUNC4(uhci);
	if (!td)
		goto nomem;
	*plink = FUNC0(uhci, td);

	/* Change direction for the status transaction */
	destination ^= (USB_PID_IN ^ USB_PID_OUT);
	destination |= TD_TOKEN_TOGGLE;		/* End in Data1 */

	FUNC3(td, urbp);
	FUNC6(uhci, td, status | TD_CTRL_IOC,
			destination | FUNC5(0), 0);
	plink = &td->link;

	/*
	 * Build the new dummy TD and activate the old one
	 */
	td = FUNC4(uhci);
	if (!td)
		goto nomem;
	*plink = FUNC0(uhci, td);

	FUNC6(uhci, td, 0, USB_PID_OUT | FUNC5(0), 0);
	FUNC11();
	qh->dummy_td->status |= FUNC1(uhci, TD_CTRL_ACTIVE);
	qh->dummy_td = td;

	/* Low-speed transfers get a different queue, and won't hog the bus.
	 * Also, some devices enumerate better without FSBR; the easiest way
	 * to do that is to put URBs on the low-speed queue while the device
	 * isn't in the CONFIGURED state. */
	if (urb->dev->speed == USB_SPEED_LOW ||
			urb->dev->state != USB_STATE_CONFIGURED)
		skel = SKEL_LS_CONTROL;
	else {
		skel = SKEL_FS_CONTROL;
		FUNC2(uhci, urb);
	}
	if (qh->state != QH_STATE_ACTIVE)
		qh->skel = skel;
	return 0;

nomem:
	/* Remove the dummy TD from the td_list so it doesn't get freed */
	FUNC8(qh->dummy_td);
	return -ENOMEM;
}
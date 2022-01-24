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
struct xhci_virt_ep {int next_frame_id; struct xhci_ring* ring; } ;
struct xhci_virt_device {int /*<<< orphan*/  out_ctx; struct xhci_virt_ep* eps; } ;
struct xhci_ring {int /*<<< orphan*/  num_trbs_free; int /*<<< orphan*/  num_trbs_free_temp; int /*<<< orphan*/  td_list; } ;
struct xhci_hcd {int /*<<< orphan*/  hcs_params2; TYPE_1__* run_regs; int /*<<< orphan*/  hcc_params; struct xhci_virt_device** devs; } ;
struct xhci_ep_ctx {int dummy; } ;
struct urb {int number_of_packets; int start_frame; int interval; TYPE_2__* dev; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_4__ {scalar_t__ speed; } ;
struct TYPE_3__ {int /*<<< orphan*/  microframe_index; } ;

/* Variables and functions */
 scalar_t__ EP_STATE_RUNNING ; 
 scalar_t__ FUNC0 (struct xhci_ep_ctx*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ USB_SPEED_FULL ; 
 scalar_t__ USB_SPEED_LOW ; 
 scalar_t__ XHCI_CFC_DELAY ; 
 int /*<<< orphan*/  FUNC3 (struct xhci_hcd*,struct urb*,struct xhci_ep_ctx*) ; 
 scalar_t__ FUNC4 (struct urb*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct xhci_hcd*,struct xhci_ring*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int,int) ; 
 struct xhci_ep_ctx* FUNC9 (struct xhci_hcd*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC10 (struct xhci_hcd*,int /*<<< orphan*/ ,struct urb*,int,unsigned int) ; 

int FUNC11(struct xhci_hcd *xhci, gfp_t mem_flags,
		struct urb *urb, int slot_id, unsigned int ep_index)
{
	struct xhci_virt_device *xdev;
	struct xhci_ring *ep_ring;
	struct xhci_ep_ctx *ep_ctx;
	int start_frame;
	int num_tds, num_trbs, i;
	int ret;
	struct xhci_virt_ep *xep;
	int ist;

	xdev = xhci->devs[slot_id];
	xep = &xhci->devs[slot_id]->eps[ep_index];
	ep_ring = xdev->eps[ep_index].ring;
	ep_ctx = FUNC9(xhci, xdev->out_ctx, ep_index);

	num_trbs = 0;
	num_tds = urb->number_of_packets;
	for (i = 0; i < num_tds; i++)
		num_trbs += FUNC4(urb, i);

	/* Check the ring to guarantee there is enough room for the whole urb.
	 * Do not insert any td of the urb to the ring if the check failed.
	 */
	ret = FUNC6(xhci, ep_ring, FUNC0(ep_ctx),
			   num_trbs, mem_flags);
	if (ret)
		return ret;

	/*
	 * Check interval value. This should be done before we start to
	 * calculate the start frame value.
	 */
	FUNC3(xhci, urb, ep_ctx);

	/* Calculate the start frame and put it in urb->start_frame. */
	if (FUNC1(xhci->hcc_params) && !FUNC5(&ep_ring->td_list)) {
		if (FUNC0(ep_ctx) ==	EP_STATE_RUNNING) {
			urb->start_frame = xep->next_frame_id;
			goto skip_start_over;
		}
	}

	start_frame = FUNC7(&xhci->run_regs->microframe_index);
	start_frame &= 0x3fff;
	/*
	 * Round up to the next frame and consider the time before trb really
	 * gets scheduled by hardare.
	 */
	ist = FUNC2(xhci->hcs_params2) & 0x7;
	if (FUNC2(xhci->hcs_params2) & (1 << 3))
		ist <<= 3;
	start_frame += ist + XHCI_CFC_DELAY;
	start_frame = FUNC8(start_frame, 8);

	/*
	 * Round up to the next ESIT (Endpoint Service Interval Time) if ESIT
	 * is greate than 8 microframes.
	 */
	if (urb->dev->speed == USB_SPEED_LOW ||
			urb->dev->speed == USB_SPEED_FULL) {
		start_frame = FUNC8(start_frame, urb->interval << 3);
		urb->start_frame = start_frame >> 3;
	} else {
		start_frame = FUNC8(start_frame, urb->interval);
		urb->start_frame = start_frame;
	}

skip_start_over:
	ep_ring->num_trbs_free_temp = ep_ring->num_trbs_free;

	return FUNC10(xhci, mem_flags, urb, slot_id, ep_index);
}
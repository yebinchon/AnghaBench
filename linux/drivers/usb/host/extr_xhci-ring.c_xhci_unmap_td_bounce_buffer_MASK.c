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
struct xhci_td {struct urb* urb; struct xhci_segment* bounce_seg; } ;
struct xhci_segment {size_t bounce_len; scalar_t__ bounce_offs; int /*<<< orphan*/  bounce_buf; int /*<<< orphan*/  bounce_dma; } ;
struct xhci_ring {int /*<<< orphan*/  bounce_buf_len; } ;
struct xhci_hcd {int dummy; } ;
struct urb {int /*<<< orphan*/  num_sgs; int /*<<< orphan*/  sg; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* controller; } ;
struct TYPE_4__ {TYPE_1__ self; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,scalar_t__) ; 
 scalar_t__ FUNC2 (struct urb*) ; 
 TYPE_2__* FUNC3 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct xhci_hcd*,char*,size_t,size_t) ; 

__attribute__((used)) static void FUNC5(struct xhci_hcd *xhci,
		struct xhci_ring *ring, struct xhci_td *td)
{
	struct device *dev = FUNC3(xhci)->self.controller;
	struct xhci_segment *seg = td->bounce_seg;
	struct urb *urb = td->urb;
	size_t len;

	if (!ring || !seg || !urb)
		return;

	if (FUNC2(urb)) {
		FUNC0(dev, seg->bounce_dma, ring->bounce_buf_len,
				 DMA_TO_DEVICE);
		return;
	}

	FUNC0(dev, seg->bounce_dma, ring->bounce_buf_len,
			 DMA_FROM_DEVICE);
	/* for in tranfers we need to copy the data from bounce to sg */
	len = FUNC1(urb->sg, urb->num_sgs, seg->bounce_buf,
			     seg->bounce_len, seg->bounce_offs);
	if (len != seg->bounce_len)
		FUNC4(xhci, "WARN Wrong bounce buffer read length: %zu != %d\n",
				len, seg->bounce_len);
	seg->bounce_len = 0;
	seg->bounce_offs = 0;
}
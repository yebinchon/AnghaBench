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
typedef  unsigned int u32 ;
struct xhci_segment {unsigned int bounce_len; unsigned int bounce_offs; void* bounce_dma; int /*<<< orphan*/  bounce_buf; } ;
struct xhci_hcd {int dummy; } ;
struct urb {unsigned int transfer_buffer_length; int /*<<< orphan*/  num_sgs; int /*<<< orphan*/  sg; TYPE_2__* ep; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device* controller; } ;
struct TYPE_6__ {TYPE_1__ self; } ;
struct TYPE_5__ {int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 void* FUNC0 (struct device*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device*,void*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct urb*) ; 
 int /*<<< orphan*/  FUNC5 (struct xhci_hcd*,char*,unsigned int,...) ; 
 TYPE_3__* FUNC6 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (struct xhci_hcd*,char*,...) ; 

__attribute__((used)) static int FUNC8(struct xhci_hcd *xhci, struct urb *urb, u32 enqd_len,
			 u32 *trb_buff_len, struct xhci_segment *seg)
{
	struct device *dev = FUNC6(xhci)->self.controller;
	unsigned int unalign;
	unsigned int max_pkt;
	u32 new_buff_len;
	size_t len;

	max_pkt = FUNC3(&urb->ep->desc);
	unalign = (enqd_len + *trb_buff_len) % max_pkt;

	/* we got lucky, last normal TRB data on segment is packet aligned */
	if (unalign == 0)
		return 0;

	FUNC5(xhci, "Unaligned %d bytes, buff len %d\n",
		 unalign, *trb_buff_len);

	/* is the last nornal TRB alignable by splitting it */
	if (*trb_buff_len > unalign) {
		*trb_buff_len -= unalign;
		FUNC5(xhci, "split align, new buff len %d\n", *trb_buff_len);
		return 0;
	}

	/*
	 * We want enqd_len + trb_buff_len to sum up to a number aligned to
	 * number which is divisible by the endpoint's wMaxPacketSize. IOW:
	 * (size of currently enqueued TRBs + remainder) % wMaxPacketSize == 0.
	 */
	new_buff_len = max_pkt - (enqd_len % max_pkt);

	if (new_buff_len > (urb->transfer_buffer_length - enqd_len))
		new_buff_len = (urb->transfer_buffer_length - enqd_len);

	/* create a max max_pkt sized bounce buffer pointed to by last trb */
	if (FUNC4(urb)) {
		len = FUNC2(urb->sg, urb->num_sgs,
				   seg->bounce_buf, new_buff_len, enqd_len);
		if (len != new_buff_len)
			FUNC7(xhci,
				"WARN Wrong bounce buffer write length: %zu != %d\n",
				len, new_buff_len);
		seg->bounce_dma = FUNC0(dev, seg->bounce_buf,
						 max_pkt, DMA_TO_DEVICE);
	} else {
		seg->bounce_dma = FUNC0(dev, seg->bounce_buf,
						 max_pkt, DMA_FROM_DEVICE);
	}

	if (FUNC1(dev, seg->bounce_dma)) {
		/* try without aligning. Some host controllers survive */
		FUNC7(xhci, "Failed mapping bounce buffer, not aligning\n");
		return 0;
	}
	*trb_buff_len = new_buff_len;
	seg->bounce_len = new_buff_len;
	seg->bounce_offs = enqd_len;

	FUNC5(xhci, "Bounce align, new buff len %d\n", *trb_buff_len);

	return 1;
}
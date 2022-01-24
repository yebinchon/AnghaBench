#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct usb_ctrlrequest {int dummy; } ;
struct urb {int transfer_buffer_length; int transfer_flags; int /*<<< orphan*/  pipe; int /*<<< orphan*/  dev; void* transfer_buffer; void* setup_packet; int /*<<< orphan*/  transfer_dma; } ;
struct oxu_hcd {TYPE_1__* async; } ;
struct list_head {int dummy; } ;
struct ehci_qtd {int buffer_dma; int /*<<< orphan*/  hw_token; int /*<<< orphan*/  qtd_list; int /*<<< orphan*/  qtd_dma; void* hw_next; struct urb* urb; int /*<<< orphan*/  hw_alt_next; void* transfer_buffer; int /*<<< orphan*/  buffer; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  hw_alt_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  EHCI_LIST_END ; 
 int EHCI_TUNE_CERR ; 
 int /*<<< orphan*/  QTD_IOC ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int QTD_STS_ACTIVE ; 
 int QTD_TOGGLE ; 
 int URB_SHORT_NOT_OK ; 
 int URB_ZERO_PACKET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ehci_qtd* FUNC2 (struct oxu_hcd*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*,int) ; 
 int FUNC7 (struct oxu_hcd*,struct ehci_qtd*,int) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ehci_qtd*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct oxu_hcd*,struct urb*,struct list_head*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct list_head *FUNC16(struct oxu_hcd *oxu,
						struct urb *urb,
						struct list_head *head,
						gfp_t flags)
{
	struct ehci_qtd	*qtd, *qtd_prev;
	dma_addr_t buf;
	int len, maxpacket;
	int is_input;
	u32 token;
	void *transfer_buf = NULL;
	int ret;

	/*
	 * URBs map to sequences of QTDs: one logical transaction
	 */
	qtd = FUNC2(oxu);
	if (FUNC11(!qtd))
		return NULL;
	FUNC4(&qtd->qtd_list, head);
	qtd->urb = urb;

	token = QTD_STS_ACTIVE;
	token |= (EHCI_TUNE_CERR << 10);
	/* for split transactions, SplitXState initialized to zero */

	len = urb->transfer_buffer_length;
	is_input = FUNC15(urb->pipe);
	if (!urb->transfer_buffer && urb->transfer_buffer_length && is_input)
		urb->transfer_buffer = FUNC8(urb->transfer_dma);

	if (FUNC14(urb->pipe)) {
		/* SETUP pid */
		ret = FUNC7(oxu, qtd, sizeof(struct usb_ctrlrequest));
		if (ret)
			goto cleanup;

		FUNC9(qtd, qtd->buffer_dma, sizeof(struct usb_ctrlrequest),
				token | (2 /* "setup" */ << 8), 8);
		FUNC6(qtd->buffer, qtd->urb->setup_packet,
				sizeof(struct usb_ctrlrequest));

		/* ... and always at least one more pid */
		token ^= QTD_TOGGLE;
		qtd_prev = qtd;
		qtd = FUNC2(oxu);
		if (FUNC11(!qtd))
			goto cleanup;
		qtd->urb = urb;
		qtd_prev->hw_next = FUNC0(qtd->qtd_dma);
		FUNC4(&qtd->qtd_list, head);

		/* for zero length DATA stages, STATUS is always IN */
		if (len == 0)
			token |= (1 /* "in" */ << 8);
	}

	/*
	 * Data transfer stage: buffer setup
	 */

	ret = FUNC7(oxu, qtd, len);
	if (ret)
		goto cleanup;

	buf = qtd->buffer_dma;
	transfer_buf = urb->transfer_buffer;

	if (!is_input)
		FUNC6(qtd->buffer, qtd->urb->transfer_buffer, len);

	if (is_input)
		token |= (1 /* "in" */ << 8);
	/* else it's already initted to "out" pid (0 << 8) */

	maxpacket = FUNC5(FUNC12(urb->dev, urb->pipe, !is_input));

	/*
	 * buffer gets wrapped in one or more qtds;
	 * last one may be "short" (including zero len)
	 * and may serve as a control status ack
	 */
	for (;;) {
		int this_qtd_len;

		this_qtd_len = FUNC9(qtd, buf, len, token, maxpacket);
		qtd->transfer_buffer = transfer_buf;
		len -= this_qtd_len;
		buf += this_qtd_len;
		transfer_buf += this_qtd_len;
		if (is_input)
			qtd->hw_alt_next = oxu->async->hw_alt_next;

		/* qh makes control packets use qtd toggle; maybe switch it */
		if ((maxpacket & (this_qtd_len + (maxpacket - 1))) == 0)
			token ^= QTD_TOGGLE;

		if (FUNC3(len <= 0))
			break;

		qtd_prev = qtd;
		qtd = FUNC2(oxu);
		if (FUNC11(!qtd))
			goto cleanup;
		if (FUNC3(len > 0)) {
			ret = FUNC7(oxu, qtd, len);
			if (ret)
				goto cleanup;
		}
		qtd->urb = urb;
		qtd_prev->hw_next = FUNC0(qtd->qtd_dma);
		FUNC4(&qtd->qtd_list, head);
	}

	/* unless the bulk/interrupt caller wants a chance to clean
	 * up after short reads, hc should advance qh past this urb
	 */
	if (FUNC3((urb->transfer_flags & URB_SHORT_NOT_OK) == 0
				|| FUNC14(urb->pipe)))
		qtd->hw_alt_next = EHCI_LIST_END;

	/*
	 * control requests may need a terminating data "status" ack;
	 * bulk ones may need a terminating short packet (zero length).
	 */
	if (FUNC3(urb->transfer_buffer_length != 0)) {
		int	one_more = 0;

		if (FUNC14(urb->pipe)) {
			one_more = 1;
			token ^= 0x0100;	/* "in" <--> "out"  */
			token |= QTD_TOGGLE;	/* force DATA1 */
		} else if (FUNC13(urb->pipe)
				&& (urb->transfer_flags & URB_ZERO_PACKET)
				&& !(urb->transfer_buffer_length % maxpacket)) {
			one_more = 1;
		}
		if (one_more) {
			qtd_prev = qtd;
			qtd = FUNC2(oxu);
			if (FUNC11(!qtd))
				goto cleanup;
			qtd->urb = urb;
			qtd_prev->hw_next = FUNC0(qtd->qtd_dma);
			FUNC4(&qtd->qtd_list, head);

			/* never any data in such packets */
			FUNC9(qtd, 0, 0, token, 0);
		}
	}

	/* by default, enable interrupt on urb completion */
	qtd->hw_token |= FUNC1(QTD_IOC);
	return head;

cleanup:
	FUNC10(oxu, urb, head);
	return NULL;
}
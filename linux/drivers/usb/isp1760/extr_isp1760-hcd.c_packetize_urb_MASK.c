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
typedef  scalar_t__ u8 ;
struct TYPE_2__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct usb_ctrlrequest {int dummy; } ;
struct urb {int transfer_buffer_length; void* setup_packet; int transfer_flags; int /*<<< orphan*/  pipe; void* transfer_buffer; int /*<<< orphan*/  dev; scalar_t__ transfer_dma; } ;
struct list_head {int dummy; } ;
struct isp1760_qtd {int /*<<< orphan*/  qtd_list; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ IN_PID ; 
 scalar_t__ OUT_PID ; 
 scalar_t__ SETUP_PID ; 
 int URB_ZERO_PACKET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct isp1760_qtd* FUNC4 (int /*<<< orphan*/ ,struct urb*,scalar_t__) ; 
 int FUNC5 (struct isp1760_qtd*,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct usb_hcd *hcd,
		struct urb *urb, struct list_head *head, gfp_t flags)
{
	struct isp1760_qtd *qtd;
	void *buf;
	int len, maxpacketsize;
	u8 packet_type;

	/*
	 * URBs map to sequences of QTDs:  one logical transaction
	 */

	if (!urb->transfer_buffer && urb->transfer_buffer_length) {
		/* XXX This looks like usb storage / SCSI bug */
		FUNC1(hcd->self.controller,
				"buf is null, dma is %08lx len is %d\n",
				(long unsigned)urb->transfer_dma,
				urb->transfer_buffer_length);
		FUNC0(1);
	}

	if (FUNC10(urb->pipe))
		packet_type = IN_PID;
	else
		packet_type = OUT_PID;

	if (FUNC9(urb->pipe)) {
		qtd = FUNC4(flags, urb, SETUP_PID);
		if (!qtd)
			goto cleanup;
		FUNC5(qtd, urb->setup_packet, sizeof(struct usb_ctrlrequest));
		FUNC2(&qtd->qtd_list, head);

		/* for zero length DATA stages, STATUS is always IN */
		if (urb->transfer_buffer_length == 0)
			packet_type = IN_PID;
	}

	maxpacketsize = FUNC3(FUNC7(urb->dev, urb->pipe,
						FUNC11(urb->pipe)));

	/*
	 * buffer gets wrapped in one or more qtds;
	 * last one may be "short" (including zero len)
	 * and may serve as a control status ack
	 */
	buf = urb->transfer_buffer;
	len = urb->transfer_buffer_length;

	for (;;) {
		int this_qtd_len;

		qtd = FUNC4(flags, urb, packet_type);
		if (!qtd)
			goto cleanup;
		this_qtd_len = FUNC5(qtd, buf, len);
		FUNC2(&qtd->qtd_list, head);

		len -= this_qtd_len;
		buf += this_qtd_len;

		if (len <= 0)
			break;
	}

	/*
	 * control requests may need a terminating data "status" ack;
	 * bulk ones may need a terminating short packet (zero length).
	 */
	if (urb->transfer_buffer_length != 0) {
		int one_more = 0;

		if (FUNC9(urb->pipe)) {
			one_more = 1;
			if (packet_type == IN_PID)
				packet_type = OUT_PID;
			else
				packet_type = IN_PID;
		} else if (FUNC8(urb->pipe)
				&& (urb->transfer_flags & URB_ZERO_PACKET)
				&& !(urb->transfer_buffer_length %
							maxpacketsize)) {
			one_more = 1;
		}
		if (one_more) {
			qtd = FUNC4(flags, urb, packet_type);
			if (!qtd)
				goto cleanup;

			/* never any data in such packets */
			FUNC5(qtd, NULL, 0);
			FUNC2(&qtd->qtd_list, head);
		}
	}

	return;

cleanup:
	FUNC6(head);
}
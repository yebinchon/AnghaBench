#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct usb_cardstate {int busy; int /*<<< orphan*/  bulk_out_urb; int /*<<< orphan*/  bulk_out_buffer; int /*<<< orphan*/  bulk_out_epnum; int /*<<< orphan*/  udev; scalar_t__ bulk_out_size; } ;
struct TYPE_6__ {struct usb_cardstate* usb; } ;
struct cardstate {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; scalar_t__ connected; TYPE_1__ hw; struct bc_state* bcs; } ;
struct bc_state {TYPE_2__* tx_skb; } ;
struct TYPE_7__ {unsigned long len; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_INTR ; 
 int /*<<< orphan*/  DEBUG_OUTPUT ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct bc_state*,TYPE_2__*) ; 
 int /*<<< orphan*/  gigaset_write_bulk_callback ; 
 int FUNC4 (unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct cardstate*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct cardstate *cs)
{
	int ret = 0;
	int count;
	struct bc_state *bcs = &cs->bcs[0]; /* only one channel */
	struct usb_cardstate *ucs = cs->hw.usb;
	unsigned long flags;

	FUNC2(DEBUG_OUTPUT, "len: %d...", bcs->tx_skb->len);

	if (!bcs->tx_skb->len) {
		FUNC1(bcs->tx_skb);
		bcs->tx_skb = NULL;
		return -EINVAL;
	}

	/* Copy data to bulk out buffer and transmit data */
	count = FUNC4(bcs->tx_skb->len, (unsigned) ucs->bulk_out_size);
	FUNC5(bcs->tx_skb, ucs->bulk_out_buffer, count);
	FUNC6(bcs->tx_skb, count);
	ucs->busy = 1;
	FUNC2(DEBUG_OUTPUT, "write_modem: send %d bytes", count);

	FUNC7(&cs->lock, flags);
	if (cs->connected) {
		FUNC9(ucs->bulk_out_urb, ucs->udev,
				  FUNC10(ucs->udev,
						  ucs->bulk_out_epnum),
				  ucs->bulk_out_buffer, count,
				  gigaset_write_bulk_callback, cs);
		ret = FUNC11(ucs->bulk_out_urb, GFP_ATOMIC);
	} else {
		ret = -ENODEV;
	}
	FUNC8(&cs->lock, flags);

	if (ret) {
		FUNC0(cs->dev, "could not submit urb (error %d)\n", -ret);
		ucs->busy = 0;
	}

	if (!bcs->tx_skb->len) {
		/* skb sent completely */
		FUNC3(bcs, bcs->tx_skb);

		FUNC2(DEBUG_INTR, "kfree skb (Adr: %lx)!",
			(unsigned long) bcs->tx_skb);
		FUNC1(bcs->tx_skb);
		bcs->tx_skb = NULL;
	}

	return ret;
}
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
struct TYPE_2__ {size_t count; size_t head; void** buf; } ;
struct rio_channel {scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  comp; TYPE_1__ rx_ring; int /*<<< orphan*/  id; } ;
struct rio_ch_chan_hdr {int /*<<< orphan*/  dst_ch; } ;
struct cm_dev {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 size_t RIOCM_RX_RING_SIZE ; 
 scalar_t__ RIO_CM_CONNECTED ; 
 int /*<<< orphan*/  RX_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 struct rio_channel* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rio_channel*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct cm_dev *cm, void *buf)
{
	struct rio_ch_chan_hdr *hdr;
	struct rio_channel *ch;

	hdr = buf;

	FUNC3(RX_DATA, "for ch=%d", FUNC2(hdr->dst_ch));

	ch = FUNC4(FUNC2(hdr->dst_ch));
	if (!ch) {
		/* Discard data message for non-existing channel */
		FUNC1(buf);
		return -ENODEV;
	}

	/* Place pointer to the buffer into channel's RX queue */
	FUNC6(&ch->lock);

	if (ch->state != RIO_CM_CONNECTED) {
		/* Channel is not ready to receive data, discard a packet */
		FUNC3(RX_DATA, "ch=%d is in wrong state=%d",
			    ch->id, ch->state);
		FUNC7(&ch->lock);
		FUNC1(buf);
		FUNC5(ch);
		return -EIO;
	}

	if (ch->rx_ring.count == RIOCM_RX_RING_SIZE) {
		/* If RX ring is full, discard a packet */
		FUNC3(RX_DATA, "ch=%d is full", ch->id);
		FUNC7(&ch->lock);
		FUNC1(buf);
		FUNC5(ch);
		return -ENOMEM;
	}

	ch->rx_ring.buf[ch->rx_ring.head] = buf;
	ch->rx_ring.head++;
	ch->rx_ring.count++;
	ch->rx_ring.head %= RIOCM_RX_RING_SIZE;

	FUNC0(&ch->comp);

	FUNC7(&ch->lock);
	FUNC5(ch);

	return 0;
}
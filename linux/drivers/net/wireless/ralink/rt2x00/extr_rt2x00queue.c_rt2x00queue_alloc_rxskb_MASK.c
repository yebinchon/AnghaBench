#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct skb_frame_desc {int /*<<< orphan*/  flags; int /*<<< orphan*/  skb_dma; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct rt2x00_dev {int /*<<< orphan*/  dev; } ;
struct queue_entry {struct data_queue* queue; } ;
struct data_queue {unsigned int data_size; unsigned int desc_size; unsigned int winfo_size; struct rt2x00_dev* rt2x00dev; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  REQUIRE_DMA ; 
 int /*<<< orphan*/  SKBDESC_DMA_MAPPED_RX ; 
 struct sk_buff* FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct skb_frame_desc* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct skb_frame_desc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

struct sk_buff *FUNC11(struct queue_entry *entry, gfp_t gfp)
{
	struct data_queue *queue = entry->queue;
	struct rt2x00_dev *rt2x00dev = queue->rt2x00dev;
	struct sk_buff *skb;
	struct skb_frame_desc *skbdesc;
	unsigned int frame_size;
	unsigned int head_size = 0;
	unsigned int tail_size = 0;

	/*
	 * The frame size includes descriptor size, because the
	 * hardware directly receive the frame into the skbuffer.
	 */
	frame_size = queue->data_size + queue->desc_size + queue->winfo_size;

	/*
	 * The payload should be aligned to a 4-byte boundary,
	 * this means we need at least 3 bytes for moving the frame
	 * into the correct offset.
	 */
	head_size = 4;

	/*
	 * For IV/EIV/ICV assembly we must make sure there is
	 * at least 8 bytes bytes available in headroom for IV/EIV
	 * and 8 bytes for ICV data as tailroon.
	 */
	if (FUNC7(rt2x00dev)) {
		head_size += 8;
		tail_size += 8;
	}

	/*
	 * Allocate skbuffer.
	 */
	skb = FUNC0(frame_size + head_size + tail_size, gfp);
	if (!skb)
		return NULL;

	/*
	 * Make sure we not have a frame with the requested bytes
	 * available in the head and tail.
	 */
	FUNC9(skb, head_size);
	FUNC8(skb, frame_size);

	/*
	 * Populate skbdesc.
	 */
	skbdesc = FUNC4(skb);
	FUNC5(skbdesc, 0, sizeof(*skbdesc));

	if (FUNC6(rt2x00dev, REQUIRE_DMA)) {
		dma_addr_t skb_dma;

		skb_dma = FUNC2(rt2x00dev->dev, skb->data, skb->len,
					 DMA_FROM_DEVICE);
		if (FUNC10(FUNC3(rt2x00dev->dev, skb_dma))) {
			FUNC1(skb);
			return NULL;
		}

		skbdesc->skb_dma = skb_dma;
		skbdesc->flags |= SKBDESC_DMA_MAPPED_RX;
	}

	return skb;
}
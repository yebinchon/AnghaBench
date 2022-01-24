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
struct TYPE_3__ {int tx_zerocopy_sent; int /*<<< orphan*/  tx_frag_overflow; } ;
struct xenvif_queue {int /*<<< orphan*/  inflight_packets; TYPE_1__ stats; } ;
struct ubuf_info {int /*<<< orphan*/  (* callback ) (struct ubuf_info*,int) ;} ;
struct sk_buff {int truesize; unsigned int data_len; unsigned int len; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_4__ {int nr_frags; int /*<<< orphan*/  frags; struct ubuf_info* destructor_arg; struct sk_buff* frag_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MAX_SKB_FRAGS ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct page*) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 unsigned int FUNC13 (struct sk_buff*) ; 
 TYPE_2__* FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct ubuf_info*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct xenvif_queue*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC17(struct xenvif_queue *queue, struct sk_buff *skb)
{
	unsigned int offset = FUNC13(skb);
	skb_frag_t frags[MAX_SKB_FRAGS];
	int i, f;
	struct ubuf_info *uarg;
	struct sk_buff *nskb = FUNC14(skb)->frag_list;

	queue->stats.tx_zerocopy_sent += 2;
	queue->stats.tx_frag_overflow++;

	FUNC16(queue, nskb);
	/* Subtract frags size, we will correct it later */
	skb->truesize -= skb->data_len;
	skb->len += nskb->len;
	skb->data_len += nskb->len;

	/* create a brand new frags array and coalesce there */
	for (i = 0; offset < skb->len; i++) {
		struct page *page;
		unsigned int len;

		FUNC1(i >= MAX_SKB_FRAGS);
		page = FUNC3(GFP_ATOMIC);
		if (!page) {
			int j;
			skb->truesize += skb->data_len;
			for (j = 0; j < i; j++)
				FUNC7(FUNC10(&frags[j]));
			return -ENOMEM;
		}

		if (offset + PAGE_SIZE < skb->len)
			len = PAGE_SIZE;
		else
			len = skb->len - offset;
		if (FUNC8(skb, offset, FUNC6(page), len))
			FUNC0();

		offset += len;
		FUNC2(&frags[i], page);
		FUNC9(&frags[i], 0);
		FUNC11(&frags[i], len);
	}

	/* Release all the original (foreign) frags. */
	for (f = 0; f < FUNC14(skb)->nr_frags; f++)
		FUNC12(skb, f);
	uarg = FUNC14(skb)->destructor_arg;
	/* increase inflight counter to offset decrement in callback */
	FUNC4(&queue->inflight_packets);
	uarg->callback(uarg, true);
	FUNC14(skb)->destructor_arg = NULL;

	/* Fill the skb with the new (local) frags. */
	FUNC5(FUNC14(skb)->frags, frags, i * sizeof(skb_frag_t));
	FUNC14(skb)->nr_frags = i;
	skb->truesize += i * PAGE_SIZE;

	return 0;
}
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
typedef  scalar_t__ u16 ;
struct xenvif_queue {scalar_t__* pending_ring; int /*<<< orphan*/  pending_cons; } ;
struct xen_netif_tx_request {int dummy; } ;
struct skb_shared_info {unsigned int nr_frags; struct sk_buff* frag_list; int /*<<< orphan*/ * frags; } ;
struct sk_buff {int dummy; } ;
struct gnttab_map_grant_ref {int dummy; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  size_t pending_ring_idx_t ;
struct TYPE_2__ {scalar_t__ pending_idx; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 struct skb_shared_info* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct xenvif_queue*,scalar_t__,struct xen_netif_tx_request*,int /*<<< orphan*/ ,struct gnttab_map_grant_ref*) ; 

__attribute__((used)) static struct gnttab_map_grant_ref *FUNC6(struct xenvif_queue *queue,
							struct sk_buff *skb,
							struct xen_netif_tx_request *txp,
							struct gnttab_map_grant_ref *gop,
							unsigned int frag_overflow,
							struct sk_buff *nskb)
{
	struct skb_shared_info *shinfo = FUNC4(skb);
	skb_frag_t *frags = shinfo->frags;
	u16 pending_idx = FUNC0(skb)->pending_idx;
	int start;
	pending_ring_idx_t index;
	unsigned int nr_slots;

	nr_slots = shinfo->nr_frags;

	/* Skip first skb fragment if it is on same page as header fragment. */
	start = (FUNC1(&shinfo->frags[0]) == pending_idx);

	for (shinfo->nr_frags = start; shinfo->nr_frags < nr_slots;
	     shinfo->nr_frags++, txp++, gop++) {
		index = FUNC3(queue->pending_cons++);
		pending_idx = queue->pending_ring[index];
		FUNC5(queue, pending_idx, txp, 0, gop);
		FUNC2(&frags[shinfo->nr_frags], pending_idx);
	}

	if (frag_overflow) {

		shinfo = FUNC4(nskb);
		frags = shinfo->frags;

		for (shinfo->nr_frags = 0; shinfo->nr_frags < frag_overflow;
		     shinfo->nr_frags++, txp++, gop++) {
			index = FUNC3(queue->pending_cons++);
			pending_idx = queue->pending_ring[index];
			FUNC5(queue, pending_idx, txp, 0,
						gop);
			FUNC2(&frags[shinfo->nr_frags],
					     pending_idx);
		}

		FUNC4(skb)->frag_list = nskb;
	}

	return gop;
}
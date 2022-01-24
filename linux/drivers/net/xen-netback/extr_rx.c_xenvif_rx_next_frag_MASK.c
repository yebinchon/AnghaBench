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
struct xenvif_pkt_state {unsigned int frag; struct sk_buff* frag_iter; struct sk_buff* skb; scalar_t__ frag_offset; } ;
struct sk_buff {struct sk_buff* next; } ;
struct TYPE_2__ {unsigned int nr_frags; struct sk_buff* frag_list; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC1(struct xenvif_pkt_state *pkt)
{
	struct sk_buff *frag_iter = pkt->frag_iter;
	unsigned int nr_frags = FUNC0(frag_iter)->nr_frags;

	pkt->frag++;
	pkt->frag_offset = 0;

	if (pkt->frag >= nr_frags) {
		if (frag_iter == pkt->skb)
			pkt->frag_iter = FUNC0(frag_iter)->frag_list;
		else
			pkt->frag_iter = frag_iter->next;

		pkt->frag = -1;
	}
}
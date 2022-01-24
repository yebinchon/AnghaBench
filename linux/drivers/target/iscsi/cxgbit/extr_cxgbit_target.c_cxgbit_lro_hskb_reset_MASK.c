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
typedef  size_t u8 ;
struct skb_shared_info {size_t nr_frags; int /*<<< orphan*/ * frags; } ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  truesize; scalar_t__ data_len; int /*<<< orphan*/  data; } ;
struct cxgbit_sock {struct sk_buff* lro_hskb; } ;

/* Variables and functions */
 int /*<<< orphan*/  LRO_SKB_MIN_HEADROOM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct skb_shared_info* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct cxgbit_sock *csk)
{
	struct sk_buff *skb = csk->lro_hskb;
	struct skb_shared_info *ssi = FUNC3(skb);
	u8 i;

	FUNC0(skb->data, 0, LRO_SKB_MIN_HEADROOM);
	for (i = 0; i < ssi->nr_frags; i++)
		FUNC1(FUNC2(&ssi->frags[i]));
	ssi->nr_frags = 0;
	skb->data_len = 0;
	skb->truesize -= skb->len;
	skb->len = 0;
}
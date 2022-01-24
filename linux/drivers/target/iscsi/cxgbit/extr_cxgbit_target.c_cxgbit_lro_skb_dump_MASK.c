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
struct sk_buff {int /*<<< orphan*/  data_len; int /*<<< orphan*/  len; int /*<<< orphan*/  data; int /*<<< orphan*/  head; } ;
struct cxgbit_lro_pdu_cb {int /*<<< orphan*/  frags; int /*<<< orphan*/  ddigest; int /*<<< orphan*/  seq; int /*<<< orphan*/  flags; int /*<<< orphan*/  pdulen; } ;
struct cxgbit_lro_cb {size_t csk; size_t pdu_idx; int /*<<< orphan*/  pdu_totallen; } ;

/* Variables and functions */
 struct cxgbit_lro_cb* FUNC0 (struct sk_buff*) ; 
 struct cxgbit_lro_pdu_cb* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct sk_buff*,size_t,size_t,int /*<<< orphan*/ ,...) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct skb_shared_info* FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC6(struct sk_buff *skb)
{
	struct skb_shared_info *ssi = FUNC5(skb);
	struct cxgbit_lro_cb *lro_cb = FUNC0(skb);
	struct cxgbit_lro_pdu_cb *pdu_cb = FUNC1(skb, 0);
	u8 i;

	FUNC2("skb 0x%p, head 0x%p, 0x%p, len %u,%u, frags %u.\n",
		skb, skb->head, skb->data, skb->len, skb->data_len,
		ssi->nr_frags);
	FUNC2("skb 0x%p, lro_cb, csk 0x%p, pdu %u, %u.\n",
		skb, lro_cb->csk, lro_cb->pdu_idx, lro_cb->pdu_totallen);

	for (i = 0; i < lro_cb->pdu_idx; i++, pdu_cb++)
		FUNC2("skb 0x%p, pdu %d, %u, f 0x%x, seq 0x%x, dcrc 0x%x, "
			"frags %u.\n",
			skb, i, pdu_cb->pdulen, pdu_cb->flags, pdu_cb->seq,
			pdu_cb->ddigest, pdu_cb->frags);
	for (i = 0; i < ssi->nr_frags; i++)
		FUNC2("skb 0x%p, frag %d, off %u, sz %u.\n",
			skb, i, FUNC3(&ssi->frags[i]),
			FUNC4(&ssi->frags[i]));
}
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
struct sk_buff {int dummy; } ;
struct cxgbit_sock {int rx_credits; int rcv_win; int /*<<< orphan*/  rcv_nxt; int /*<<< orphan*/  tid; } ;
struct cxgbit_lro_pdu_cb {int flags; int /*<<< orphan*/  seq; } ;
struct cxgbit_lro_cb {scalar_t__ pdu_totallen; } ;

/* Variables and functions */
 int PDUCBF_RX_HDR ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct cxgbit_sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct cxgbit_sock*) ; 
 struct cxgbit_lro_cb* FUNC3 (struct sk_buff*) ; 
 struct cxgbit_lro_pdu_cb* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct cxgbit_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct cxgbit_sock *csk, struct sk_buff *skb)
{
	struct cxgbit_lro_cb *lro_cb = FUNC3(skb);
	struct cxgbit_lro_pdu_cb *pdu_cb = FUNC4(skb, 0);
	int ret = -1;

	if ((pdu_cb->flags & PDUCBF_RX_HDR) &&
	    (pdu_cb->seq != csk->rcv_nxt)) {
		FUNC5("csk 0x%p, tid 0x%x, seq 0x%x != 0x%x.\n",
			csk, csk->tid, pdu_cb->seq, csk->rcv_nxt);
		FUNC0(skb);
		return ret;
	}

	csk->rcv_nxt += lro_cb->pdu_totallen;

	ret = FUNC1(csk, skb);

	csk->rx_credits += lro_cb->pdu_totallen;

	if (csk->rx_credits >= (csk->rcv_win / 4))
		FUNC2(csk);

	return ret;
}
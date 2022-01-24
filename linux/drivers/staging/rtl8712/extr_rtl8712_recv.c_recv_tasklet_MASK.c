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
struct sk_buff {scalar_t__ len; } ;
struct recv_priv {int /*<<< orphan*/  free_recv_skb_queue; int /*<<< orphan*/  rx_skb_queue; } ;
struct _adapter {struct recv_priv recvpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct _adapter*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC6(void *priv)
{
	struct sk_buff *pskb;
	struct _adapter *padapter = priv;
	struct recv_priv *precvpriv = &padapter->recvpriv;

	while (NULL != (pskb = FUNC3(&precvpriv->rx_skb_queue))) {
		FUNC1(padapter, pskb);
		FUNC5(pskb);
		pskb->len = 0;
		if (!FUNC2(pskb))
			FUNC4(&precvpriv->free_recv_skb_queue, pskb);
		else
			FUNC0(pskb);
	}
}
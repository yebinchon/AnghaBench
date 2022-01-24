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
struct adapter {scalar_t__ bSurpriseRemoved; scalar_t__ bDriverStopped; struct recv_priv recvpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 

void FUNC6(void *priv)
{
	struct sk_buff *pskb;
	struct adapter *adapt = priv;
	struct recv_priv *precvpriv = &adapt->recvpriv;

	while (NULL != (pskb = FUNC3(&precvpriv->rx_skb_queue))) {
		if ((adapt->bDriverStopped) || (adapt->bSurpriseRemoved)) {
			FUNC0("recv_tasklet => bDriverStopped or bSurpriseRemoved\n");
			FUNC1(pskb);
			break;
		}
		FUNC2(adapt, pskb);
		FUNC5(pskb);
		pskb->len = 0;
		FUNC4(&precvpriv->free_recv_skb_queue, pskb);
	}
}
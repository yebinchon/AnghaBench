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
struct recv_priv {int /*<<< orphan*/  free_recv_skb_queue; int /*<<< orphan*/  rx_skb_queue; int /*<<< orphan*/  pallocated_recv_buf; scalar_t__ precv_buf; struct _adapter* adapter; } ;
struct recv_buf {int dummy; } ;
struct _adapter {int /*<<< orphan*/  pnetdev; } ;

/* Variables and functions */
 int NR_RECVBUFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*,struct recv_buf*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct recv_priv *precvpriv)
{
	int i;
	struct recv_buf *precvbuf;
	struct _adapter *padapter = precvpriv->adapter;

	precvbuf = (struct recv_buf *)precvpriv->precv_buf;
	for (i = 0; i < NR_RECVBUFF; i++) {
		FUNC2(padapter, precvbuf);
		precvbuf++;
	}
	FUNC0(precvpriv->pallocated_recv_buf);
	FUNC4(&precvpriv->rx_skb_queue);
	if (FUNC3(&precvpriv->rx_skb_queue))
		FUNC1(padapter->pnetdev, "r8712u: rx_skb_queue not empty\n");
	FUNC4(&precvpriv->free_recv_skb_queue);
	if (FUNC3(&precvpriv->free_recv_skb_queue))
		FUNC1(padapter->pnetdev, "r8712u: free_recv_skb_queue not empty %d\n",
			    FUNC3(&precvpriv->free_recv_skb_queue));
}
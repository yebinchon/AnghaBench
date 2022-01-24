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
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  queue; } ;
struct recv_priv {int free_recv_buf_queue_cnt; int /*<<< orphan*/  free_recv_skb_queue; int /*<<< orphan*/  rx_skb_queue; int /*<<< orphan*/  recv_tasklet; TYPE_1__ free_recv_buf_queue; scalar_t__ precv_buf; scalar_t__ pallocated_recv_buf; } ;
struct recv_buf {int /*<<< orphan*/  list; struct _adapter* adapter; scalar_t__ ref_cnt; int /*<<< orphan*/  recvbuf_lock; } ;
struct _adapter {int /*<<< orphan*/  pnetdev; } ;
typedef  int addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ MAX_RECVBUF_SZ ; 
 int NR_PREALLOC_RECV_SKB ; 
 int NR_RECVBUFF ; 
 int RECVBUFF_ALIGN_SZ ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (struct _adapter*,struct recv_buf*) ; 
 scalar_t__ recv_tasklet ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,void (*) (unsigned long),unsigned long) ; 

void FUNC11(struct recv_priv *precvpriv,
			  struct _adapter *padapter)
{
	int i;
	struct recv_buf *precvbuf;
	addr_t tmpaddr = 0;
	int alignment = 0;
	struct sk_buff *pskb = NULL;

	/*init recv_buf*/
	FUNC1(&precvpriv->free_recv_buf_queue);
	precvpriv->pallocated_recv_buf =
		FUNC2(NR_RECVBUFF * sizeof(struct recv_buf) + 4, GFP_ATOMIC);
	if (!precvpriv->pallocated_recv_buf)
		return;
	precvpriv->precv_buf = precvpriv->pallocated_recv_buf + 4 -
			      ((addr_t)(precvpriv->pallocated_recv_buf) & 3);
	precvbuf = (struct recv_buf *)precvpriv->precv_buf;
	for (i = 0; i < NR_RECVBUFF; i++) {
		FUNC0(&precvbuf->list);
		FUNC9(&precvbuf->recvbuf_lock);
		if (FUNC5(padapter, precvbuf))
			break;
		precvbuf->ref_cnt = 0;
		precvbuf->adapter = padapter;
		FUNC3(&precvbuf->list,
				 &(precvpriv->free_recv_buf_queue.queue));
		precvbuf++;
	}
	precvpriv->free_recv_buf_queue_cnt = NR_RECVBUFF;
	FUNC10(&precvpriv->recv_tasklet,
	     (void(*)(unsigned long))recv_tasklet,
	     (unsigned long)padapter);
	FUNC6(&precvpriv->rx_skb_queue);

	FUNC6(&precvpriv->free_recv_skb_queue);
	for (i = 0; i < NR_PREALLOC_RECV_SKB; i++) {
		pskb = FUNC4(padapter->pnetdev, MAX_RECVBUF_SZ +
		       RECVBUFF_ALIGN_SZ);
		if (pskb) {
			tmpaddr = (addr_t)pskb->data;
			alignment = tmpaddr & (RECVBUFF_ALIGN_SZ - 1);
			FUNC8(pskb, (RECVBUFF_ALIGN_SZ - alignment));
			FUNC7(&precvpriv->free_recv_skb_queue, pskb);
		}
		pskb = NULL;
	}
}
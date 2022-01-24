#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct rx_pkt_attrib {int tcpchk_valid; int tcp_chkrpt; } ;
struct TYPE_7__ {TYPE_3__* pkt; int /*<<< orphan*/  len; int /*<<< orphan*/  rx_data; struct rx_pkt_attrib attrib; } ;
struct TYPE_8__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
struct __queue {int dummy; } ;
struct recv_priv {int /*<<< orphan*/  rx_drop; struct __queue free_recv_queue; } ;
struct _adapter {int /*<<< orphan*/  pnetdev; struct recv_priv recvpriv; } ;
struct TYPE_9__ {int /*<<< orphan*/  protocol; int /*<<< orphan*/  dev; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ _pkt ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (union recv_frame*,struct __queue*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 

void FUNC4(struct _adapter *adapter,
			    union recv_frame *recvframe)
{
	struct recv_priv *recvpriv;
	struct  __queue	*free_recv_queue;
	_pkt *skb;
	struct rx_pkt_attrib *attrib = &recvframe->u.hdr.attrib;

	recvpriv = &adapter->recvpriv;
	free_recv_queue = &recvpriv->free_recv_queue;
	skb = recvframe->u.hdr.pkt;
	if (!skb)
		goto _recv_indicatepkt_drop;
	skb->data = recvframe->u.hdr.rx_data;
	skb->len = recvframe->u.hdr.len;
	FUNC3(skb, skb->len);
	if ((attrib->tcpchk_valid == 1) && (attrib->tcp_chkrpt == 1))
		skb->ip_summed = CHECKSUM_UNNECESSARY;
	else
		skb->ip_summed = CHECKSUM_NONE;
	skb->dev = adapter->pnetdev;
	skb->protocol = FUNC0(skb, adapter->pnetdev);
	FUNC1(skb);
	recvframe->u.hdr.pkt = NULL; /* pointers to NULL before
				      * r8712_free_recvframe()
				      */
	FUNC2(recvframe, free_recv_queue);
	return;
_recv_indicatepkt_drop:
	 /*enqueue back to free_recv_queue*/
	if (recvframe)
		FUNC2(recvframe, free_recv_queue);
	recvpriv->rx_drop++;
}
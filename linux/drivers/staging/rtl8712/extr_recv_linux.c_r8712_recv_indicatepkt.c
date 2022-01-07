
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct rx_pkt_attrib {int tcpchk_valid; int tcp_chkrpt; } ;
struct TYPE_7__ {TYPE_3__* pkt; int len; int rx_data; struct rx_pkt_attrib attrib; } ;
struct TYPE_8__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
struct __queue {int dummy; } ;
struct recv_priv {int rx_drop; struct __queue free_recv_queue; } ;
struct _adapter {int pnetdev; struct recv_priv recvpriv; } ;
struct TYPE_9__ {int protocol; int dev; int ip_summed; int len; int data; } ;
typedef TYPE_3__ _pkt ;


 int CHECKSUM_NONE ;
 int CHECKSUM_UNNECESSARY ;
 int eth_type_trans (TYPE_3__*,int ) ;
 int netif_rx (TYPE_3__*) ;
 int r8712_free_recvframe (union recv_frame*,struct __queue*) ;
 int skb_set_tail_pointer (TYPE_3__*,int ) ;

void r8712_recv_indicatepkt(struct _adapter *adapter,
       union recv_frame *recvframe)
{
 struct recv_priv *recvpriv;
 struct __queue *free_recv_queue;
 _pkt *skb;
 struct rx_pkt_attrib *attrib = &recvframe->u.hdr.attrib;

 recvpriv = &adapter->recvpriv;
 free_recv_queue = &recvpriv->free_recv_queue;
 skb = recvframe->u.hdr.pkt;
 if (!skb)
  goto _recv_indicatepkt_drop;
 skb->data = recvframe->u.hdr.rx_data;
 skb->len = recvframe->u.hdr.len;
 skb_set_tail_pointer(skb, skb->len);
 if ((attrib->tcpchk_valid == 1) && (attrib->tcp_chkrpt == 1))
  skb->ip_summed = CHECKSUM_UNNECESSARY;
 else
  skb->ip_summed = CHECKSUM_NONE;
 skb->dev = adapter->pnetdev;
 skb->protocol = eth_type_trans(skb, adapter->pnetdev);
 netif_rx(skb);
 recvframe->u.hdr.pkt = ((void*)0);


 r8712_free_recvframe(recvframe, free_recv_queue);
 return;
_recv_indicatepkt_drop:

 if (recvframe)
  r8712_free_recvframe(recvframe, free_recv_queue);
 recvpriv->rx_drop++;
}

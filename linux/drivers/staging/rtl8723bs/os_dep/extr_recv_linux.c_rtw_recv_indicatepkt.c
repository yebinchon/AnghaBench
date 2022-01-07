
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct rx_pkt_attrib {int eth_type; } ;
struct TYPE_9__ {TYPE_4__* pkt; int len; int rx_data; int rx_end; int rx_tail; int rx_head; struct rx_pkt_attrib attrib; } ;
struct TYPE_10__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
struct __queue {int dummy; } ;
struct recv_priv {struct __queue free_recv_queue; } ;
struct TYPE_11__ {int os_indicate_err; int os_indicate; } ;
struct adapter {TYPE_3__ rx_logs; struct recv_priv recvpriv; } ;
struct TYPE_12__ {int len; int data; int head; } ;
typedef TYPE_4__ _pkt ;


 int DBG_COUNTER (int ) ;
 int RT_TRACE (int ,int ,char*) ;
 int _FAIL ;
 int _SUCCESS ;
 int _drv_err_ ;
 int _drv_info_ ;
 int _module_recv_osdep_c_ ;
 int rtw_free_recvframe (union recv_frame*,struct __queue*) ;
 int rtw_os_ksocket_send (struct adapter*,union recv_frame*) ;
 int rtw_os_recv_indicate_pkt (struct adapter*,TYPE_4__*,struct rx_pkt_attrib*) ;
 int skb_end_pointer (TYPE_4__*) ;
 int skb_set_tail_pointer (TYPE_4__*,int ) ;
 int skb_tail_pointer (TYPE_4__*) ;

int rtw_recv_indicatepkt(struct adapter *padapter, union recv_frame *precv_frame)
{
 struct recv_priv *precvpriv;
 struct __queue *pfree_recv_queue;
 _pkt *skb;
 struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;

 DBG_COUNTER(padapter->rx_logs.os_indicate);

 precvpriv = &(padapter->recvpriv);
 pfree_recv_queue = &(precvpriv->free_recv_queue);

 skb = precv_frame->u.hdr.pkt;
 if (skb == ((void*)0)) {
  RT_TRACE(_module_recv_osdep_c_, _drv_err_, ("rtw_recv_indicatepkt():skb == NULL something wrong!!!!\n"));
  goto _recv_indicatepkt_drop;
 }

 RT_TRACE(_module_recv_osdep_c_, _drv_info_, ("rtw_recv_indicatepkt():skb != NULL !!!\n"));
 RT_TRACE(_module_recv_osdep_c_, _drv_info_, ("rtw_recv_indicatepkt():precv_frame->u.hdr.rx_head =%p  precv_frame->hdr.rx_data =%p\n", precv_frame->u.hdr.rx_head, precv_frame->u.hdr.rx_data));
 RT_TRACE(_module_recv_osdep_c_, _drv_info_, ("precv_frame->hdr.rx_tail =%p precv_frame->u.hdr.rx_end =%p precv_frame->hdr.len =%d\n", precv_frame->u.hdr.rx_tail, precv_frame->u.hdr.rx_end, precv_frame->u.hdr.len));

 skb->data = precv_frame->u.hdr.rx_data;

 skb_set_tail_pointer(skb, precv_frame->u.hdr.len);

 skb->len = precv_frame->u.hdr.len;

 RT_TRACE(_module_recv_osdep_c_, _drv_info_, ("\n skb->head =%p skb->data =%p skb->tail =%p skb->end =%p skb->len =%d\n", skb->head, skb->data, skb_tail_pointer(skb), skb_end_pointer(skb), skb->len));
 rtw_os_recv_indicate_pkt(padapter, skb, pattrib);

 precv_frame->u.hdr.pkt = ((void*)0);

 rtw_free_recvframe(precv_frame, pfree_recv_queue);

 RT_TRACE(_module_recv_osdep_c_, _drv_info_, ("\n rtw_recv_indicatepkt :after rtw_os_recv_indicate_pkt!!!!\n"));

 return _SUCCESS;

_recv_indicatepkt_drop:


  rtw_free_recvframe(precv_frame, pfree_recv_queue);

  DBG_COUNTER(padapter->rx_logs.os_indicate_err);
  return _FAIL;
}

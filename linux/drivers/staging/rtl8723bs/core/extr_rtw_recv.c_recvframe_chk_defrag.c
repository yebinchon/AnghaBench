
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ mfrag; scalar_t__ frag_num; scalar_t__ privacy; scalar_t__* ta; } ;
struct recv_frame_hdr {TYPE_3__ attrib; int list; int rx_data; } ;
struct TYPE_8__ {struct recv_frame_hdr hdr; } ;
union recv_frame {TYPE_4__ u; } ;
typedef scalar_t__ u8 ;
struct sta_priv {int dummy; } ;
struct __queue {int queue; } ;
struct TYPE_6__ {struct __queue defrag_q; } ;
struct sta_info {TYPE_2__ sta_recvpriv; } ;
struct list_head {int dummy; } ;
struct TYPE_5__ {struct __queue free_recv_queue; } ;
struct adapter {TYPE_1__ recvpriv; struct sta_priv stapriv; } ;


 scalar_t__ GetFrameType (int ) ;
 int RT_TRACE (int ,int ,char*) ;
 scalar_t__ WIFI_DATA_TYPE ;
 scalar_t__ _FAIL ;
 int _drv_err_ ;
 int _drv_info_ ;
 int _module_rtl871x_recv_c_ ;
 struct list_head* get_list_head (struct __queue*) ;
 int list_add_tail (int *,struct list_head*) ;
 int list_empty (int *) ;
 scalar_t__ recvframe_chkmic (struct adapter*,union recv_frame*) ;
 union recv_frame* recvframe_defrag (struct adapter*,struct __queue*) ;
 int rtw_free_recvframe (union recv_frame*,struct __queue*) ;
 int rtw_free_recvframe_queue (struct __queue*,struct __queue*) ;
 struct sta_info* rtw_get_bcmc_stainfo (struct adapter*) ;
 struct sta_info* rtw_get_stainfo (struct sta_priv*,scalar_t__*) ;

union recv_frame *recvframe_chk_defrag(struct adapter *padapter, union recv_frame *precv_frame)
{
 u8 ismfrag;
 u8 fragnum;
 u8 *psta_addr;
 struct recv_frame_hdr *pfhdr;
 struct sta_info *psta;
 struct sta_priv *pstapriv;
 struct list_head *phead;
 union recv_frame *prtnframe = ((void*)0);
 struct __queue *pfree_recv_queue, *pdefrag_q;

 pstapriv = &padapter->stapriv;

 pfhdr = &precv_frame->u.hdr;

 pfree_recv_queue = &padapter->recvpriv.free_recv_queue;


 ismfrag = pfhdr->attrib.mfrag;
 fragnum = pfhdr->attrib.frag_num;

 psta_addr = pfhdr->attrib.ta;
 psta = rtw_get_stainfo(pstapriv, psta_addr);
 if (!psta) {
  u8 type = GetFrameType(pfhdr->rx_data);
  if (type != WIFI_DATA_TYPE) {
   psta = rtw_get_bcmc_stainfo(padapter);
   pdefrag_q = &psta->sta_recvpriv.defrag_q;
  } else
   pdefrag_q = ((void*)0);
 } else
  pdefrag_q = &psta->sta_recvpriv.defrag_q;

 if ((ismfrag == 0) && (fragnum == 0))
  prtnframe = precv_frame;

 if (ismfrag == 1) {


  if (pdefrag_q) {
   if (fragnum == 0)

    if (!list_empty(&pdefrag_q->queue))

     rtw_free_recvframe_queue(pdefrag_q, pfree_recv_queue);





   phead = get_list_head(pdefrag_q);
   list_add_tail(&pfhdr->list, phead);


   RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("Enqueuq: ismfrag = %d, fragnum = %d\n", ismfrag, fragnum));

   prtnframe = ((void*)0);

  } else {

   rtw_free_recvframe(precv_frame, pfree_recv_queue);
   prtnframe = ((void*)0);
   RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("Free because pdefrag_q == NULL: ismfrag = %d, fragnum = %d\n", ismfrag, fragnum));
  }

 }

 if ((ismfrag == 0) && (fragnum != 0)) {


  if (pdefrag_q) {

   phead = get_list_head(pdefrag_q);
   list_add_tail(&pfhdr->list, phead);



   RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("defrag: ismfrag = %d, fragnum = %d\n", ismfrag, fragnum));
   precv_frame = recvframe_defrag(padapter, pdefrag_q);
   prtnframe = precv_frame;

  } else {

   rtw_free_recvframe(precv_frame, pfree_recv_queue);
   prtnframe = ((void*)0);
   RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("Free because pdefrag_q == NULL: ismfrag = %d, fragnum = %d\n", ismfrag, fragnum));
  }

 }


 if ((prtnframe) && (prtnframe->u.hdr.attrib.privacy)) {

  if (recvframe_chkmic(padapter, prtnframe) == _FAIL) {
   RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("recvframe_chkmic(padapter,  prtnframe) == _FAIL\n"));
   rtw_free_recvframe(prtnframe, pfree_recv_queue);
   prtnframe = ((void*)0);
  }
 }
 return prtnframe;
}

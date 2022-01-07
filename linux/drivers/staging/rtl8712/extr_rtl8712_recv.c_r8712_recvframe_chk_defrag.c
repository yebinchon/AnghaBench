
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ mfrag; scalar_t__ frag_num; scalar_t__ privacy; scalar_t__* ta; } ;
struct recv_frame_hdr {TYPE_3__ attrib; int list; } ;
struct TYPE_8__ {struct recv_frame_hdr hdr; } ;
union recv_frame {TYPE_4__ u; } ;
typedef scalar_t__ u8 ;
struct sta_priv {int dummy; } ;
struct list_head {int dummy; } ;
struct __queue {struct list_head queue; } ;
struct TYPE_6__ {struct __queue defrag_q; } ;
struct sta_info {TYPE_2__ sta_recvpriv; } ;
struct TYPE_5__ {struct __queue free_recv_queue; } ;
struct _adapter {TYPE_1__ recvpriv; struct sta_priv stapriv; } ;


 scalar_t__ _FAIL ;
 int list_add_tail (int *,struct list_head*) ;
 int list_empty (struct list_head*) ;
 int r8712_free_recvframe (union recv_frame*,struct __queue*) ;
 int r8712_free_recvframe_queue (struct __queue*,struct __queue*) ;
 struct sta_info* r8712_get_stainfo (struct sta_priv*,scalar_t__*) ;
 scalar_t__ r8712_recvframe_chkmic (struct _adapter*,union recv_frame*) ;
 union recv_frame* recvframe_defrag (struct _adapter*,struct __queue*) ;

union recv_frame *r8712_recvframe_chk_defrag(struct _adapter *padapter,
          union recv_frame *precv_frame)
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
 psta = r8712_get_stainfo(pstapriv, psta_addr);
 if (!psta)
  pdefrag_q = ((void*)0);
 else
  pdefrag_q = &psta->sta_recvpriv.defrag_q;

 if ((ismfrag == 0) && (fragnum == 0))
  prtnframe = precv_frame;
 if (ismfrag == 1) {



  if (pdefrag_q) {
   if (fragnum == 0) {

    if (!list_empty(&pdefrag_q->queue)) {

     r8712_free_recvframe_queue(pdefrag_q,
            pfree_recv_queue);
    }
   }

   phead = &pdefrag_q->queue;
   list_add_tail(&pfhdr->list, phead);
   prtnframe = ((void*)0);
  } else {



   r8712_free_recvframe(precv_frame, pfree_recv_queue);
   prtnframe = ((void*)0);
  }

 }
 if ((ismfrag == 0) && (fragnum != 0)) {



  if (pdefrag_q) {
   phead = &pdefrag_q->queue;
   list_add_tail(&pfhdr->list, phead);

   precv_frame = recvframe_defrag(padapter, pdefrag_q);
   prtnframe = precv_frame;
  } else {



   r8712_free_recvframe(precv_frame, pfree_recv_queue);
   prtnframe = ((void*)0);
  }
 }
 if (prtnframe && (prtnframe->u.hdr.attrib.privacy)) {

  if (r8712_recvframe_chkmic(padapter, prtnframe) == _FAIL) {
   r8712_free_recvframe(prtnframe, pfree_recv_queue);
   prtnframe = ((void*)0);
  }
 }
 return prtnframe;
}

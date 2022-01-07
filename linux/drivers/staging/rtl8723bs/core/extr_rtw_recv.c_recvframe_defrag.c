
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ frag_num; scalar_t__ hdrlen; scalar_t__ iv_len; int icv_len; } ;
struct recv_frame_hdr {TYPE_3__ attrib; int len; int rx_data; int rx_tail; } ;
struct TYPE_5__ {struct recv_frame_hdr hdr; int list; } ;
union recv_frame {TYPE_2__ u; } ;
typedef scalar_t__ u8 ;
struct list_head {int dummy; } ;
struct __queue {int dummy; } ;
struct TYPE_4__ {struct __queue free_recv_queue; } ;
struct adapter {TYPE_1__ recvpriv; } ;


 int RT_TRACE (int ,int ,char*) ;
 int _drv_info_ ;
 int _module_rtl871x_recv_c_ ;
 struct list_head* get_list_head (struct __queue*) ;
 struct list_head* get_next (struct list_head*) ;
 scalar_t__* get_recvframe_data (union recv_frame*) ;
 int list_del_init (int *) ;
 int memcpy (int ,int ,int ) ;
 int recvframe_pull (union recv_frame*,scalar_t__) ;
 int recvframe_pull_tail (union recv_frame*,int ) ;
 int recvframe_put (union recv_frame*,int ) ;
 int rtw_free_recvframe (union recv_frame*,struct __queue*) ;
 int rtw_free_recvframe_queue (struct __queue*,struct __queue*) ;

__attribute__((used)) static union recv_frame *recvframe_defrag(struct adapter *adapter,
       struct __queue *defrag_q)
{
 struct list_head *plist, *phead;
 u8 *data, wlanhdr_offset;
 u8 curfragnum;
 struct recv_frame_hdr *pfhdr, *pnfhdr;
 union recv_frame *prframe, *pnextrframe;
 struct __queue *pfree_recv_queue;

 curfragnum = 0;
 pfree_recv_queue = &adapter->recvpriv.free_recv_queue;

 phead = get_list_head(defrag_q);
 plist = get_next(phead);
 prframe = (union recv_frame *)plist;
 pfhdr = &prframe->u.hdr;
 list_del_init(&(prframe->u.list));

 if (curfragnum != pfhdr->attrib.frag_num) {


  rtw_free_recvframe(prframe, pfree_recv_queue);
  rtw_free_recvframe_queue(defrag_q, pfree_recv_queue);

  return ((void*)0);
 }

 curfragnum++;

 plist = get_list_head(defrag_q);

 plist = get_next(plist);

 data = get_recvframe_data(prframe);

 while (phead != plist) {
  pnextrframe = (union recv_frame *)plist;
  pnfhdr = &pnextrframe->u.hdr;




  if (curfragnum != pnfhdr->attrib.frag_num) {


   rtw_free_recvframe(prframe, pfree_recv_queue);
   rtw_free_recvframe_queue(defrag_q, pfree_recv_queue);
   return ((void*)0);
  }

  curfragnum++;




  wlanhdr_offset = pnfhdr->attrib.hdrlen + pnfhdr->attrib.iv_len;

  recvframe_pull(pnextrframe, wlanhdr_offset);


  recvframe_pull_tail(prframe, pfhdr->attrib.icv_len);


  memcpy(pfhdr->rx_tail, pnfhdr->rx_data, pnfhdr->len);

  recvframe_put(prframe, pnfhdr->len);

  pfhdr->attrib.icv_len = pnfhdr->attrib.icv_len;
  plist = get_next(plist);

 }


 rtw_free_recvframe_queue(defrag_q, pfree_recv_queue);

 RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("Performance defrag!!!!!\n"));

 return prframe;
}

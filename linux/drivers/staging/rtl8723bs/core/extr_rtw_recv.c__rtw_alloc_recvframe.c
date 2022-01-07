
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct adapter* adapter; int list; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
struct __queue {int queue; } ;
struct recv_priv {int free_recvframe_cnt; struct __queue free_recv_queue; } ;
struct list_head {int dummy; } ;
struct adapter {struct recv_priv recvpriv; } ;


 struct list_head* get_list_head (struct __queue*) ;
 struct list_head* get_next (struct list_head*) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;

union recv_frame *_rtw_alloc_recvframe(struct __queue *pfree_recv_queue)
{

 union recv_frame *precvframe;
 struct list_head *plist, *phead;
 struct adapter *padapter;
 struct recv_priv *precvpriv;

 if (list_empty(&pfree_recv_queue->queue))
  precvframe = ((void*)0);
 else {
  phead = get_list_head(pfree_recv_queue);

  plist = get_next(phead);

  precvframe = (union recv_frame *)plist;

  list_del_init(&precvframe->u.hdr.list);
  padapter = precvframe->u.hdr.adapter;
  if (padapter) {
   precvpriv = &padapter->recvpriv;
   if (pfree_recv_queue == &precvpriv->free_recv_queue)
    precvpriv->free_recvframe_cnt--;
  }
 }
 return precvframe;
}

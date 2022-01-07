
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union recv_frame {int dummy; } recv_frame ;
struct list_head {int dummy; } ;
struct __queue {int lock; } ;


 struct list_head* get_list_head (struct __queue*) ;
 struct list_head* get_next (struct list_head*) ;
 int rtw_free_recvframe (union recv_frame*,struct __queue*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void rtw_free_recvframe_queue(struct __queue *pframequeue, struct __queue *pfree_recv_queue)
{
 union recv_frame *precvframe;
 struct list_head *plist, *phead;

 spin_lock(&pframequeue->lock);

 phead = get_list_head(pframequeue);
 plist = get_next(phead);

 while (phead != plist) {
  precvframe = (union recv_frame *)plist;

  plist = get_next(plist);

  rtw_free_recvframe(precvframe, pfree_recv_queue);
 }

 spin_unlock(&pframequeue->lock);
}

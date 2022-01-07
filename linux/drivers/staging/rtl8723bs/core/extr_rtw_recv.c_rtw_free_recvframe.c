
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int list; scalar_t__ len; struct adapter* adapter; } ;
struct TYPE_3__ {TYPE_2__ hdr; } ;
union recv_frame {TYPE_1__ u; } ;
struct __queue {int lock; } ;
struct recv_priv {int free_recvframe_cnt; struct __queue free_recv_queue; } ;
struct adapter {struct recv_priv recvpriv; } ;


 int _SUCCESS ;
 int get_list_head (struct __queue*) ;
 int list_add_tail (int *,int ) ;
 int list_del_init (int *) ;
 int rtw_os_free_recvframe (union recv_frame*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int rtw_free_recvframe(union recv_frame *precvframe, struct __queue *pfree_recv_queue)
{
 struct adapter *padapter = precvframe->u.hdr.adapter;
 struct recv_priv *precvpriv = &padapter->recvpriv;

 rtw_os_free_recvframe(precvframe);


 spin_lock_bh(&pfree_recv_queue->lock);

 list_del_init(&(precvframe->u.hdr.list));

 precvframe->u.hdr.len = 0;

 list_add_tail(&(precvframe->u.hdr.list), get_list_head(pfree_recv_queue));

 if (padapter) {
  if (pfree_recv_queue == &precvpriv->free_recv_queue)
    precvpriv->free_recvframe_cnt++;
 }
 spin_unlock_bh(&pfree_recv_queue->lock);
 return _SUCCESS;
}

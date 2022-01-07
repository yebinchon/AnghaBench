
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int list; struct adapter* adapter; } ;
struct TYPE_3__ {TYPE_2__ hdr; } ;
union recv_frame {TYPE_1__ u; } ;
struct __queue {int dummy; } ;
struct recv_priv {int free_recvframe_cnt; struct __queue free_recv_queue; } ;
struct adapter {struct recv_priv recvpriv; } ;
typedef int sint ;


 int _SUCCESS ;
 int get_list_head (struct __queue*) ;
 int list_add_tail (int *,int ) ;
 int list_del_init (int *) ;

sint _rtw_enqueue_recvframe(union recv_frame *precvframe, struct __queue *queue)
{

 struct adapter *padapter = precvframe->u.hdr.adapter;
 struct recv_priv *precvpriv = &padapter->recvpriv;


 list_del_init(&(precvframe->u.hdr.list));


 list_add_tail(&(precvframe->u.hdr.list), get_list_head(queue));

 if (padapter)
  if (queue == &precvpriv->free_recv_queue)
   precvpriv->free_recvframe_cnt++;

 return _SUCCESS;
}

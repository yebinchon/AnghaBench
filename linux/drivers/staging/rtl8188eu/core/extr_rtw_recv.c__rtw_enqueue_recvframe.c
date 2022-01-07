
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recv_frame {int list; } ;
struct __queue {int dummy; } ;


 int _SUCCESS ;
 int get_list_head (struct __queue*) ;
 int list_add_tail (int *,int ) ;
 int list_del_init (int *) ;

int _rtw_enqueue_recvframe(struct recv_frame *precvframe, struct __queue *queue)
{
 list_del_init(&precvframe->list);
 list_add_tail(&precvframe->list, get_list_head(queue));

 return _SUCCESS;
}

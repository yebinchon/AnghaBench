
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rx_pkt_attrib {int seq_num; } ;
struct TYPE_3__ {int list; struct rx_pkt_attrib attrib; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
struct __queue {int dummy; } ;
struct recv_reorder_ctrl {struct __queue pending_recvframe_queue; } ;
struct list_head {int dummy; } ;


 scalar_t__ SN_EQUAL (int ,int ) ;
 scalar_t__ SN_LESS (int ,int ) ;
 struct list_head* get_list_head (struct __queue*) ;
 struct list_head* get_next (struct list_head*) ;
 int list_add_tail (int *,struct list_head*) ;
 int list_del_init (int *) ;

int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl, union recv_frame *prframe)
{
 struct rx_pkt_attrib *pattrib = &prframe->u.hdr.attrib;
 struct __queue *ppending_recvframe_queue = &preorder_ctrl->pending_recvframe_queue;
 struct list_head *phead, *plist;
 union recv_frame *pnextrframe;
 struct rx_pkt_attrib *pnextattrib;







 phead = get_list_head(ppending_recvframe_queue);
 plist = get_next(phead);

 while (phead != plist) {
  pnextrframe = (union recv_frame *)plist;
  pnextattrib = &pnextrframe->u.hdr.attrib;

  if (SN_LESS(pnextattrib->seq_num, pattrib->seq_num))
   plist = get_next(plist);
  else if (SN_EQUAL(pnextattrib->seq_num, pattrib->seq_num))



   return 0;
  else
   break;



 }





 list_del_init(&(prframe->u.hdr.list));

 list_add_tail(&(prframe->u.hdr.list), plist);






 return 1;

}

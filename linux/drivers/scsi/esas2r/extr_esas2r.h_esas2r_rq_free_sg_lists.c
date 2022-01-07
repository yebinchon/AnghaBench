
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_request {int sg_table_head; } ;
struct esas2r_adapter {int sg_list_lock; int free_sg_list_head; } ;


 scalar_t__ list_empty (int *) ;
 int list_splice_tail_init (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void esas2r_rq_free_sg_lists(struct esas2r_request *rq,
        struct esas2r_adapter *a)
{
 unsigned long flags;

 if (list_empty(&rq->sg_table_head))
  return;

 spin_lock_irqsave(&a->sg_list_lock, flags);
 list_splice_tail_init(&rq->sg_table_head, &a->free_sg_list_head);
 spin_unlock_irqrestore(&a->sg_list_lock, flags);
}

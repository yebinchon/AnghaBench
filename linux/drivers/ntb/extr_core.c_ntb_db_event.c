
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntb_dev {int ctx_lock; int ctx; TYPE_1__* ctx_ops; } ;
struct TYPE_2__ {int (* db_event ) (int ,int) ;} ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int) ;

void ntb_db_event(struct ntb_dev *ntb, int vector)
{
 unsigned long irqflags;

 spin_lock_irqsave(&ntb->ctx_lock, irqflags);
 {
  if (ntb->ctx_ops && ntb->ctx_ops->db_event)
   ntb->ctx_ops->db_event(ntb->ctx, vector);
 }
 spin_unlock_irqrestore(&ntb->ctx_lock, irqflags);
}

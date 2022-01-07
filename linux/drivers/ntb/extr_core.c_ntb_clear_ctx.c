
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_dev {int ctx_lock; int * ctx; int * ctx_ops; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ntb_clear_ctx(struct ntb_dev *ntb)
{
 unsigned long irqflags;

 spin_lock_irqsave(&ntb->ctx_lock, irqflags);
 {
  ntb->ctx_ops = ((void*)0);
  ntb->ctx = ((void*)0);
 }
 spin_unlock_irqrestore(&ntb->ctx_lock, irqflags);
}

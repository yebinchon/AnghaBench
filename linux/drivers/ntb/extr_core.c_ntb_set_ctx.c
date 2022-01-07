
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_dev {int ctx_lock; struct ntb_ctx_ops const* ctx_ops; void* ctx; } ;
struct ntb_ctx_ops {int dummy; } ;


 int EINVAL ;
 int ntb_ctx_ops_is_valid (struct ntb_ctx_ops const*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ntb_set_ctx(struct ntb_dev *ntb, void *ctx,
  const struct ntb_ctx_ops *ctx_ops)
{
 unsigned long irqflags;

 if (!ntb_ctx_ops_is_valid(ctx_ops))
  return -EINVAL;
 if (ntb->ctx_ops)
  return -EINVAL;

 spin_lock_irqsave(&ntb->ctx_lock, irqflags);
 {
  ntb->ctx = ctx;
  ntb->ctx_ops = ctx_ops;
 }
 spin_unlock_irqrestore(&ntb->ctx_lock, irqflags);

 return 0;
}

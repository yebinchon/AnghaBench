
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int hw_lock; int flags; struct intr_context* intr_context; } ;
struct intr_context {int intr_en_mask; int irq_cnt; } ;


 int INTR_EN ;
 int QL_MSIX_ENABLED ;
 int STS ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ likely (int) ;
 int ql_read32 (struct ql_adapter*,int ) ;
 int ql_write32 (struct ql_adapter*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

u32 ql_enable_completion_interrupt(struct ql_adapter *qdev, u32 intr)
{
 u32 var = 0;
 unsigned long hw_flags = 0;
 struct intr_context *ctx = qdev->intr_context + intr;

 if (likely(test_bit(QL_MSIX_ENABLED, &qdev->flags) && intr)) {



  ql_write32(qdev, INTR_EN,
      ctx->intr_en_mask);
  var = ql_read32(qdev, STS);
  return var;
 }

 spin_lock_irqsave(&qdev->hw_lock, hw_flags);
 if (atomic_dec_and_test(&ctx->irq_cnt)) {
  ql_write32(qdev, INTR_EN,
      ctx->intr_en_mask);
  var = ql_read32(qdev, STS);
 }
 spin_unlock_irqrestore(&qdev->hw_lock, hw_flags);
 return var;
}

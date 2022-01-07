
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int hw_lock; struct intr_context* intr_context; int flags; } ;
struct intr_context {int irq_cnt; int intr_dis_mask; } ;


 int INTR_EN ;
 int QL_MSIX_ENABLED ;
 int STS ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 scalar_t__ likely (int) ;
 int ql_read32 (struct ql_adapter*,int ) ;
 int ql_write32 (struct ql_adapter*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static u32 ql_disable_completion_interrupt(struct ql_adapter *qdev, u32 intr)
{
 u32 var = 0;
 struct intr_context *ctx;




 if (likely(test_bit(QL_MSIX_ENABLED, &qdev->flags) && intr))
  return 0;

 ctx = qdev->intr_context + intr;
 spin_lock(&qdev->hw_lock);
 if (!atomic_read(&ctx->irq_cnt)) {
  ql_write32(qdev, INTR_EN,
  ctx->intr_dis_mask);
  var = ql_read32(qdev, STS);
 }
 atomic_inc(&ctx->irq_cnt);
 spin_unlock(&qdev->hw_lock);
 return var;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rx_ring {int napi; struct ql_adapter* qdev; } ;
struct ql_adapter {int ndev; int mpi_work; int workqueue; int hw_lock; struct intr_context* intr_context; } ;
struct intr_context {int irq_mask; int intr; int irq_cnt; } ;
typedef int irqreturn_t ;


 int ERR_STS ;
 int INTR_MASK ;
 int INTR_MASK_PI ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ISR1 ;
 int KERN_DEBUG ;
 int STS_FE ;
 int STS_PI ;
 scalar_t__ atomic_read (int *) ;
 int intr ;
 int napi_schedule (int *) ;
 int netdev_err (int ,char*,int) ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int netif_info (struct ql_adapter*,int ,int ,char*) ;
 int netif_printk (struct ql_adapter*,int ,int ,int ,char*) ;
 int ql_disable_completion_interrupt (struct ql_adapter*,int ) ;
 int ql_enable_completion_interrupt (struct ql_adapter*,int ) ;
 int ql_queue_asic_error (struct ql_adapter*) ;
 int ql_read32 (struct ql_adapter*,int ) ;
 int ql_write32 (struct ql_adapter*,int ,int) ;
 int queue_delayed_work_on (int ,int ,int *,int ) ;
 int smp_processor_id () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t qlge_isr(int irq, void *dev_id)
{
 struct rx_ring *rx_ring = dev_id;
 struct ql_adapter *qdev = rx_ring->qdev;
 struct intr_context *intr_context = &qdev->intr_context[0];
 u32 var;
 int work_done = 0;

 spin_lock(&qdev->hw_lock);
 if (atomic_read(&qdev->intr_context[0].irq_cnt)) {
  netif_printk(qdev, intr, KERN_DEBUG, qdev->ndev,
        "Shared Interrupt, Not ours!\n");
  spin_unlock(&qdev->hw_lock);
  return IRQ_NONE;
 }
 spin_unlock(&qdev->hw_lock);

 var = ql_disable_completion_interrupt(qdev, intr_context->intr);




 if (var & STS_FE) {
  ql_queue_asic_error(qdev);
  netdev_err(qdev->ndev, "Got fatal error, STS = %x.\n", var);
  var = ql_read32(qdev, ERR_STS);
  netdev_err(qdev->ndev, "Resetting chip. "
     "Error Status Register = 0x%x\n", var);
  return IRQ_HANDLED;
 }




 if ((var & STS_PI) &&
  (ql_read32(qdev, INTR_MASK) & INTR_MASK_PI)) {




  netif_err(qdev, intr, qdev->ndev,
     "Got MPI processor interrupt.\n");
  ql_disable_completion_interrupt(qdev, intr_context->intr);
  ql_write32(qdev, INTR_MASK, (INTR_MASK_PI << 16));
  queue_delayed_work_on(smp_processor_id(),
    qdev->workqueue, &qdev->mpi_work, 0);
  work_done++;
 }






 var = ql_read32(qdev, ISR1);
 if (var & intr_context->irq_mask) {
  netif_info(qdev, intr, qdev->ndev,
      "Waking handler for rx_ring[0].\n");
  ql_disable_completion_interrupt(qdev, intr_context->intr);
  napi_schedule(&rx_ring->napi);
  work_done++;
 }
 ql_enable_completion_interrupt(qdev, intr_context->intr);
 return work_done ? IRQ_HANDLED : IRQ_NONE;
}

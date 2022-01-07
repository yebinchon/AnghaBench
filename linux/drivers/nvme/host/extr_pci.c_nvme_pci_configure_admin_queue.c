
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvme_queue {int q_depth; int flags; scalar_t__ cq_vector; int cq_dma_addr; int sq_dma_addr; } ;
struct TYPE_3__ {int cap; } ;
struct nvme_dev {int online_queues; TYPE_1__ ctrl; scalar_t__ bar; struct nvme_queue* queues; int subsystem; } ;


 int NVMEQ_ENABLED ;
 int NVME_AQ_DEPTH ;
 int NVME_CAP_NSSRC (int ) ;
 int NVME_CSTS_NSSRO ;
 scalar_t__ NVME_REG_ACQ ;
 scalar_t__ NVME_REG_AQA ;
 scalar_t__ NVME_REG_ASQ ;
 scalar_t__ NVME_REG_CSTS ;
 scalar_t__ NVME_REG_VS ;
 int NVME_VS (int,int,int ) ;
 int db_bar_size (struct nvme_dev*,int ) ;
 int lo_hi_writeq (int ,scalar_t__) ;
 int nvme_alloc_queue (struct nvme_dev*,int ,int ) ;
 int nvme_disable_ctrl (TYPE_1__*) ;
 int nvme_enable_ctrl (TYPE_1__*) ;
 int nvme_init_queue (struct nvme_queue*,int ) ;
 int nvme_remap_bar (struct nvme_dev*,int ) ;
 int queue_request_irq (struct nvme_queue*) ;
 int readl (scalar_t__) ;
 int set_bit (int ,int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int nvme_pci_configure_admin_queue(struct nvme_dev *dev)
{
 int result;
 u32 aqa;
 struct nvme_queue *nvmeq;

 result = nvme_remap_bar(dev, db_bar_size(dev, 0));
 if (result < 0)
  return result;

 dev->subsystem = readl(dev->bar + NVME_REG_VS) >= NVME_VS(1, 1, 0) ?
    NVME_CAP_NSSRC(dev->ctrl.cap) : 0;

 if (dev->subsystem &&
     (readl(dev->bar + NVME_REG_CSTS) & NVME_CSTS_NSSRO))
  writel(NVME_CSTS_NSSRO, dev->bar + NVME_REG_CSTS);

 result = nvme_disable_ctrl(&dev->ctrl);
 if (result < 0)
  return result;

 result = nvme_alloc_queue(dev, 0, NVME_AQ_DEPTH);
 if (result)
  return result;

 nvmeq = &dev->queues[0];
 aqa = nvmeq->q_depth - 1;
 aqa |= aqa << 16;

 writel(aqa, dev->bar + NVME_REG_AQA);
 lo_hi_writeq(nvmeq->sq_dma_addr, dev->bar + NVME_REG_ASQ);
 lo_hi_writeq(nvmeq->cq_dma_addr, dev->bar + NVME_REG_ACQ);

 result = nvme_enable_ctrl(&dev->ctrl);
 if (result)
  return result;

 nvmeq->cq_vector = 0;
 nvme_init_queue(nvmeq, 0);
 result = queue_request_irq(nvmeq);
 if (result) {
  dev->online_queues--;
  return result;
 }

 set_bit(NVMEQ_ENABLED, &nvmeq->flags);
 return result;
}

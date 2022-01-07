
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct mtu3_ep* private; } ;
struct qmu_gpd {int dw3_info; int buffer; int next_gpd; int dw0_info; } ;
struct mtu3_gpd_ring {scalar_t__ dma; struct qmu_gpd* start; } ;
struct mtu3_ep {int flags; struct mtu3_gpd_ring gpd_ring; struct mtu3* mtu; } ;
struct mtu3 {int lock; } ;
typedef scalar_t__ dma_addr_t ;


 int MAX_GPD_NUM ;
 int MTU3_EP_ENABLED ;
 int seq_printf (struct seq_file*,char*,int,scalar_t__*,struct qmu_gpd*,int ,int ,int ,int ) ;
 int seq_puts (struct seq_file*,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mtu3_qmu_gpd_show(struct seq_file *sf, void *unused)
{
 struct mtu3_ep *mep = sf->private;
 struct mtu3 *mtu = mep->mtu;
 struct mtu3_gpd_ring *ring;
 struct qmu_gpd *gpd;
 dma_addr_t dma;
 unsigned long flags;
 int i;

 spin_lock_irqsave(&mtu->lock, flags);
 ring = &mep->gpd_ring;
 gpd = ring->start;
 if (!gpd || !(mep->flags & MTU3_EP_ENABLED)) {
  seq_puts(sf, "empty!\n");
  goto out;
 }

 for (i = 0; i < MAX_GPD_NUM; i++, gpd++) {
  dma = ring->dma + i * sizeof(*gpd);
  seq_printf(sf, "gpd.%03d -> %pad, %p: %08x %08x %08x %08x\n",
      i, &dma, gpd, gpd->dw0_info, gpd->next_gpd,
      gpd->buffer, gpd->dw3_info);
 }

out:
 spin_unlock_irqrestore(&mtu->lock, flags);

 return 0;
}

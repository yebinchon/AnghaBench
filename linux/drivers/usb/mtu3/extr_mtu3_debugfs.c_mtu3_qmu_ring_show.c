
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct mtu3_ep* private; } ;
struct mtu3_gpd_ring {int dequeue; int enqueue; int end; int start; int dma; } ;
struct mtu3_ep {struct mtu3_gpd_ring gpd_ring; struct mtu3* mtu; } ;
struct mtu3 {int lock; } ;


 int seq_printf (struct seq_file*,char*,int *,int ,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mtu3_qmu_ring_show(struct seq_file *sf, void *unused)
{
 struct mtu3_ep *mep = sf->private;
 struct mtu3 *mtu = mep->mtu;
 struct mtu3_gpd_ring *ring;
 unsigned long flags;

 ring = &mep->gpd_ring;
 spin_lock_irqsave(&mtu->lock, flags);
 seq_printf(sf,
     "qmu-ring - dma:%pad, start:%p, end:%p, enq:%p, dep:%p\n",
     &ring->dma, ring->start, ring->end,
     ring->enqueue, ring->dequeue);
 spin_unlock_irqrestore(&mtu->lock, flags);

 return 0;
}

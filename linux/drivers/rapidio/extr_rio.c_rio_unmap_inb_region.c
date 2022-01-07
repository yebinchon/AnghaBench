
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rio_mport {TYPE_1__* ops; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int (* unmap_inb ) (struct rio_mport*,int ) ;} ;


 int rio_mmap_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct rio_mport*,int ) ;

void rio_unmap_inb_region(struct rio_mport *mport, dma_addr_t lstart)
{
 unsigned long flags;
 if (!mport->ops->unmap_inb)
  return;
 spin_lock_irqsave(&rio_mmap_lock, flags);
 mport->ops->unmap_inb(mport, lstart);
 spin_unlock_irqrestore(&rio_mmap_lock, flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct rio_mport {TYPE_1__* ops; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int (* map_outb ) (struct rio_mport*,int ,int ,int ,int ,int *) ;} ;


 int ENODEV ;
 int rio_mmap_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct rio_mport*,int ,int ,int ,int ,int *) ;

int rio_map_outb_region(struct rio_mport *mport, u16 destid, u64 rbase,
   u32 size, u32 rflags, dma_addr_t *local)
{
 int rc;
 unsigned long flags;

 if (!mport->ops->map_outb)
  return -ENODEV;

 spin_lock_irqsave(&rio_mmap_lock, flags);
 rc = mport->ops->map_outb(mport, destid, rbase, size,
  rflags, local);
 spin_unlock_irqrestore(&rio_mmap_lock, flags);

 return rc;
}

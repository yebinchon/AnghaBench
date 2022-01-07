
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct rio_mport {TYPE_1__* ops; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int (* map_inb ) (struct rio_mport*,int ,int ,int ,int ) ;} ;


 int rio_mmap_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct rio_mport*,int ,int ,int ,int ) ;

int rio_map_inb_region(struct rio_mport *mport, dma_addr_t local,
   u64 rbase, u32 size, u32 rflags)
{
 int rc;
 unsigned long flags;

 if (!mport->ops->map_inb)
  return -1;
 spin_lock_irqsave(&rio_mmap_lock, flags);
 rc = mport->ops->map_inb(mport, local, rbase, size, rflags);
 spin_unlock_irqrestore(&rio_mmap_lock, flags);
 return rc;
}

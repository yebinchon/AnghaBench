
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct rio_mport {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* unmap_outb ) (struct rio_mport*,int ,int ) ;} ;


 int rio_mmap_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct rio_mport*,int ,int ) ;

void rio_unmap_outb_region(struct rio_mport *mport, u16 destid, u64 rstart)
{
 unsigned long flags;

 if (!mport->ops->unmap_outb)
  return;

 spin_lock_irqsave(&rio_mmap_lock, flags);
 mport->ops->unmap_outb(mport, destid, rstart);
 spin_unlock_irqrestore(&rio_mmap_lock, flags);
}

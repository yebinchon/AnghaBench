
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orc_scb {int dummy; } ;
struct orc_host {int allocation_lock; } ;


 struct orc_scb* __orc_alloc_scb (struct orc_host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct orc_scb *orc_alloc_scb(struct orc_host * host)
{
 struct orc_scb *scb;
 unsigned long flags;

 spin_lock_irqsave(&host->allocation_lock, flags);
 scb = __orc_alloc_scb(host);
 spin_unlock_irqrestore(&host->allocation_lock, flags);
 return scb;
}

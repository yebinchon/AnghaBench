
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orc_host {int allocation_lock; scalar_t__ base; } ;


 int FAILED ;
 scalar_t__ ORC_HCTRL ;
 int SCSIRST ;
 int SUCCESS ;
 int init_alloc_map (struct orc_host*) ;
 int outb (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ wait_scsi_reset_done (struct orc_host*) ;

__attribute__((used)) static int orc_reset_scsi_bus(struct orc_host * host)
{
 unsigned long flags;

 spin_lock_irqsave(&host->allocation_lock, flags);

 init_alloc_map(host);

 outb(SCSIRST, host->base + ORC_HCTRL);


 if (wait_scsi_reset_done(host) == 0) {
  spin_unlock_irqrestore(&host->allocation_lock, flags);
  return FAILED;
 } else {
  spin_unlock_irqrestore(&host->allocation_lock, flags);
  return SUCCESS;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int host_lock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int wd33c93_intr (struct Scsi_Host*) ;

__attribute__((used)) static irqreturn_t sgiwd93_intr(int irq, void *dev_id)
{
 struct Scsi_Host * host = dev_id;
 unsigned long flags;

 spin_lock_irqsave(host->host_lock, flags);
 wd33c93_intr(host);
 spin_unlock_irqrestore(host->host_lock, flags);

 return IRQ_HANDLED;
}

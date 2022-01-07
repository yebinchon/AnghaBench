
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int host_lock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int ql_ihandl (void*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

irqreturn_t qlogicfas408_ihandl(int irq, void *dev_id)
{
 unsigned long flags;
 struct Scsi_Host *host = dev_id;

 spin_lock_irqsave(host->host_lock, flags);
 ql_ihandl(dev_id);
 spin_unlock_irqrestore(host->host_lock, flags);
 return IRQ_HANDLED;
}

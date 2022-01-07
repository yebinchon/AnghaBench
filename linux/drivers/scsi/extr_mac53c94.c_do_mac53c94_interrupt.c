
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fsc_state {TYPE_2__* current_req; } ;
struct Scsi_Host {int host_lock; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct Scsi_Host* host; } ;


 int IRQ_HANDLED ;
 int mac53c94_interrupt (int,void*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static irqreturn_t do_mac53c94_interrupt(int irq, void *dev_id)
{
 unsigned long flags;
 struct Scsi_Host *dev = ((struct fsc_state *) dev_id)->current_req->device->host;

 spin_lock_irqsave(dev->host_lock, flags);
 mac53c94_interrupt(irq, dev_id);
 spin_unlock_irqrestore(dev->host_lock, flags);
 return IRQ_HANDLED;
}

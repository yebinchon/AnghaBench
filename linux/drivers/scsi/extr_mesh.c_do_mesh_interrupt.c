
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mesh_state {struct Scsi_Host* host; } ;
struct Scsi_Host {int host_lock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int mesh_interrupt (struct mesh_state*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static irqreturn_t do_mesh_interrupt(int irq, void *dev_id)
{
 unsigned long flags;
 struct mesh_state *ms = dev_id;
 struct Scsi_Host *dev = ms->host;

 spin_lock_irqsave(dev->host_lock, flags);
 mesh_interrupt(ms);
 spin_unlock_irqrestore(dev->host_lock, flags);
 return IRQ_HANDLED;
}

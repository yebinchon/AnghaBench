
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sccnxp_port {int lock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int sccnxp_handle_events (struct sccnxp_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t sccnxp_ist(int irq, void *dev_id)
{
 struct sccnxp_port *s = (struct sccnxp_port *)dev_id;
 unsigned long flags;

 spin_lock_irqsave(&s->lock, flags);
 sccnxp_handle_events(s);
 spin_unlock_irqrestore(&s->lock, flags);

 return IRQ_HANDLED;
}

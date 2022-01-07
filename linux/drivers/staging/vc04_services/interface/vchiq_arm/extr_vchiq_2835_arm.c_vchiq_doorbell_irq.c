
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_state {int dummy; } ;
typedef int irqreturn_t ;


 scalar_t__ BELL0 ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ g_regs ;
 unsigned int readl (scalar_t__) ;
 int remote_event_pollall (struct vchiq_state*) ;

__attribute__((used)) static irqreturn_t
vchiq_doorbell_irq(int irq, void *dev_id)
{
 struct vchiq_state *state = dev_id;
 irqreturn_t ret = IRQ_NONE;
 unsigned int status;


 status = readl(g_regs + BELL0);

 if (status & 0x4) {
  remote_event_pollall(state);
  ret = IRQ_HANDLED;
 }

 return ret;
}

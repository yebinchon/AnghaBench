
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct vrc4171_socket {scalar_t__ slot; int csc_irq; int pcmcia_socket; } ;
typedef int irqreturn_t ;


 size_t CARD_SLOTA ;
 size_t CARD_SLOTB ;
 int IRQ_A ;
 int IRQ_B ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ SLOT_INITIALIZED ;
 unsigned int get_events (size_t) ;
 int pcmcia_parse_events (int *,unsigned int) ;
 int vrc4171_get_irq_status () ;
 struct vrc4171_socket* vrc4171_sockets ;

__attribute__((used)) static irqreturn_t pccard_interrupt(int irq, void *dev_id)
{
 struct vrc4171_socket *socket;
 unsigned int events;
 irqreturn_t retval = IRQ_NONE;
 uint16_t status;

 status = vrc4171_get_irq_status();
 if (status & IRQ_A) {
  socket = &vrc4171_sockets[CARD_SLOTA];
  if (socket->slot == SLOT_INITIALIZED) {
   if (status & (1 << socket->csc_irq)) {
    events = get_events(CARD_SLOTA);
    if (events != 0) {
     pcmcia_parse_events(&socket->pcmcia_socket, events);
     retval = IRQ_HANDLED;
    }
   }
  }
 }

 if (status & IRQ_B) {
  socket = &vrc4171_sockets[CARD_SLOTB];
  if (socket->slot == SLOT_INITIALIZED) {
   if (status & (1 << socket->csc_irq)) {
    events = get_events(CARD_SLOTB);
    if (events != 0) {
     pcmcia_parse_events(&socket->pcmcia_socket, events);
     retval = IRQ_HANDLED;
    }
   }
  }
 }

 return retval;
}

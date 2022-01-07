
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ type; } ;
struct sci_port {scalar_t__* irqs; int chan_tx; int chan_rx; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ PORT_SCI ;
 size_t SCIx_BRI_IRQ ;
 size_t SCIx_ERI_IRQ ;
 int SCxSR ;
 unsigned short SCxSR_BRK (struct uart_port*) ;
 unsigned short SCxSR_ERRORS (struct uart_port*) ;
 int SCxSR_ERROR_CLEAR (struct uart_port*) ;
 int SCxSR_RDxF_CLEAR (struct uart_port*) ;
 int sci_br_interrupt (int,void*) ;
 int sci_clear_SCxSR (struct uart_port*,int ) ;
 scalar_t__ sci_handle_errors (struct uart_port*) ;
 int sci_handle_fifo_overrun (struct uart_port*) ;
 int sci_receive_chars (struct uart_port*) ;
 int sci_tx_interrupt (int,void*) ;
 unsigned short serial_port_in (struct uart_port*,int ) ;
 struct sci_port* to_sci_port (struct uart_port*) ;

__attribute__((used)) static irqreturn_t sci_er_interrupt(int irq, void *ptr)
{
 struct uart_port *port = ptr;
 struct sci_port *s = to_sci_port(port);

 if (s->irqs[SCIx_ERI_IRQ] == s->irqs[SCIx_BRI_IRQ]) {

  unsigned short ssr_status = serial_port_in(port, SCxSR);


  if (ssr_status & SCxSR_BRK(port))
   sci_br_interrupt(irq, ptr);


  if (!(ssr_status & SCxSR_ERRORS(port)))
   return IRQ_HANDLED;
 }


 if (port->type == PORT_SCI) {
  if (sci_handle_errors(port)) {

   serial_port_in(port, SCxSR);
   sci_clear_SCxSR(port, SCxSR_RDxF_CLEAR(port));
  }
 } else {
  sci_handle_fifo_overrun(port);
  if (!s->chan_rx)
   sci_receive_chars(port);
 }

 sci_clear_SCxSR(port, SCxSR_ERROR_CLEAR(port));


 if (!s->chan_tx)
  sci_tx_interrupt(irq, ptr);

 return IRQ_HANDLED;
}

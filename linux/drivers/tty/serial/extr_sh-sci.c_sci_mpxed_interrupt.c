
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct sci_port {TYPE_1__* params; scalar_t__ chan_rx; int chan_tx; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {scalar_t__ size; } ;
struct TYPE_3__ {scalar_t__ overrun_reg; unsigned short overrun_mask; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ SCSCR ;
 unsigned short SCSCR_RIE ;
 unsigned short SCSCR_TIE ;
 scalar_t__ SCxSR ;
 unsigned short SCxSR_BRK (struct uart_port*) ;
 unsigned short SCxSR_ERRORS (struct uart_port*) ;
 unsigned short SCxSR_RDxF (struct uart_port*) ;
 unsigned short SCxSR_TDxE (struct uart_port*) ;
 unsigned short port_rx_irq_mask (struct uart_port*) ;
 int sci_br_interrupt (int,void*) ;
 int sci_er_interrupt (int,void*) ;
 TYPE_2__* sci_getreg (struct uart_port*,scalar_t__) ;
 int sci_handle_fifo_overrun (struct uart_port*) ;
 int sci_rx_interrupt (int,void*) ;
 int sci_tx_interrupt (int,void*) ;
 unsigned short serial_port_in (struct uart_port*,scalar_t__) ;
 struct sci_port* to_sci_port (struct uart_port*) ;

__attribute__((used)) static irqreturn_t sci_mpxed_interrupt(int irq, void *ptr)
{
 unsigned short ssr_status, scr_status, err_enabled, orer_status = 0;
 struct uart_port *port = ptr;
 struct sci_port *s = to_sci_port(port);
 irqreturn_t ret = IRQ_NONE;

 ssr_status = serial_port_in(port, SCxSR);
 scr_status = serial_port_in(port, SCSCR);
 if (s->params->overrun_reg == SCxSR)
  orer_status = ssr_status;
 else if (sci_getreg(port, s->params->overrun_reg)->size)
  orer_status = serial_port_in(port, s->params->overrun_reg);

 err_enabled = scr_status & port_rx_irq_mask(port);


 if ((ssr_status & SCxSR_TDxE(port)) && (scr_status & SCSCR_TIE) &&
     !s->chan_tx)
  ret = sci_tx_interrupt(irq, ptr);





 if (((ssr_status & SCxSR_RDxF(port)) || s->chan_rx) &&
     (scr_status & SCSCR_RIE))
  ret = sci_rx_interrupt(irq, ptr);


 if ((ssr_status & SCxSR_ERRORS(port)) && err_enabled)
  ret = sci_er_interrupt(irq, ptr);


 if ((ssr_status & SCxSR_BRK(port)) && err_enabled)
  ret = sci_br_interrupt(irq, ptr);


 if (orer_status & s->params->overrun_mask) {
  sci_handle_fifo_overrun(port);
  ret = IRQ_HANDLED;
 }

 return ret;
}

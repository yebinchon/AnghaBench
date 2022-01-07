
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct uart_port {scalar_t__ type; int dev; } ;
struct sci_port {int rx_trigger; int rx_fifo_timeout; int rx_frame; int rx_fifo_timer; int rx_timeout; int rx_timer; scalar_t__ chan_rx; } ;
typedef int irqreturn_t ;


 scalar_t__ DIV_ROUND_UP (int,int) ;
 int HZ ;
 int IRQ_HANDLED ;
 scalar_t__ PORT_SCIFA ;
 scalar_t__ PORT_SCIFB ;
 int SCIF_DR ;
 int SCSCR ;
 int SCSCR_RDRQE ;
 int SCSCR_RIE ;
 int SCxSR ;
 int SCxSR_RDxF (struct uart_port*) ;
 int dev_dbg (int ,char*,scalar_t__,int ) ;
 int disable_irq_nosync (int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ sci_dma_rx_submit (struct sci_port*,int) ;
 int sci_receive_chars (struct uart_port*) ;
 int scif_rtrg_enabled (struct uart_port*) ;
 int scif_set_rtrg (struct uart_port*,int) ;
 int serial_port_in (struct uart_port*,int ) ;
 int serial_port_out (struct uart_port*,int ,int) ;
 int start_hrtimer_us (int *,int ) ;
 struct sci_port* to_sci_port (struct uart_port*) ;

__attribute__((used)) static irqreturn_t sci_rx_interrupt(int irq, void *ptr)
{
 struct uart_port *port = ptr;
 struct sci_port *s = to_sci_port(port);
 if (s->rx_trigger > 1 && s->rx_fifo_timeout > 0) {
  if (!scif_rtrg_enabled(port))
   scif_set_rtrg(port, s->rx_trigger);

  mod_timer(&s->rx_fifo_timer, jiffies + DIV_ROUND_UP(
     s->rx_frame * HZ * s->rx_fifo_timeout, 1000000));
 }





 sci_receive_chars(port);

 return IRQ_HANDLED;
}

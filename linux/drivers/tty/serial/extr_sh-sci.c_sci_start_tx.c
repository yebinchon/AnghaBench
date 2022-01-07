
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned short u16 ;
struct uart_port {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__* state; } ;
struct sci_port {scalar_t__ chan_tx; int work_tx; scalar_t__ cookie_tx; TYPE_2__ port; } ;
struct TYPE_3__ {int xmit; } ;


 scalar_t__ PORT_SCIFA ;
 scalar_t__ PORT_SCIFB ;
 int SCSCR ;
 unsigned short SCSCR_TDRQE ;
 unsigned short SCSCR_TIE ;
 scalar_t__ dma_submit_error (scalar_t__) ;
 int schedule_work (int *) ;
 unsigned short serial_port_in (struct uart_port*,int ) ;
 int serial_port_out (struct uart_port*,int ,unsigned short) ;
 struct sci_port* to_sci_port (struct uart_port*) ;
 int uart_circ_empty (int *) ;

__attribute__((used)) static void sci_start_tx(struct uart_port *port)
{
 struct sci_port *s = to_sci_port(port);
 unsigned short ctrl;
 if (!s->chan_tx || port->type == PORT_SCIFA || port->type == PORT_SCIFB) {

  ctrl = serial_port_in(port, SCSCR);
  serial_port_out(port, SCSCR, ctrl | SCSCR_TIE);
 }
}

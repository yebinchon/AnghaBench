
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__* params; } ;
struct TYPE_3__ {scalar_t__ overrun_mask; } ;


 scalar_t__ PORT_SCI ;
 scalar_t__ SCIFA_ORER ;
 unsigned int SCIF_FERC ;
 unsigned int SCIF_PERC ;
 int SCxSR ;
 unsigned int serial_port_in (struct uart_port*,int ) ;
 int serial_port_out (struct uart_port*,int ,unsigned int) ;
 TYPE_2__* to_sci_port (struct uart_port*) ;

__attribute__((used)) static void sci_clear_SCxSR(struct uart_port *port, unsigned int mask)
{
 if (port->type == PORT_SCI) {

  serial_port_out(port, SCxSR, mask);
 } else if (to_sci_port(port)->params->overrun_mask == SCIFA_ORER) {


  serial_port_out(port, SCxSR,
    serial_port_in(port, SCxSR) & mask);
 } else {

  serial_port_out(port, SCxSR, mask & ~(SCIF_FERC | SCIF_PERC));
 }
}

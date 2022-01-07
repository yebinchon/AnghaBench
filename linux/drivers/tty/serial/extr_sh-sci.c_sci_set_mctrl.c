
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ type; } ;
struct sci_port {scalar_t__ autorts; int has_rtscts; int gpios; } ;
struct plat_sci_reg {scalar_t__ size; } ;


 scalar_t__ PORT_SCIFA ;
 scalar_t__ PORT_SCIFB ;
 int SCFCR ;
 int SCFCR_LOOP ;
 int SCFCR_MCE ;
 int SCPCR ;
 int SCPCR_RTSC ;
 unsigned int TIOCM_LOOP ;
 unsigned int TIOCM_RTS ;
 int mctrl_gpio_set (int ,unsigned int) ;
 struct plat_sci_reg* sci_getreg (struct uart_port*,int ) ;
 int sci_set_rts (struct uart_port*,int) ;
 int serial_port_in (struct uart_port*,int ) ;
 int serial_port_out (struct uart_port*,int ,int) ;
 struct sci_port* to_sci_port (struct uart_port*) ;

__attribute__((used)) static void sci_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 struct sci_port *s = to_sci_port(port);

 if (mctrl & TIOCM_LOOP) {
  const struct plat_sci_reg *reg;




  reg = sci_getreg(port, SCFCR);
  if (reg->size)
   serial_port_out(port, SCFCR,
     serial_port_in(port, SCFCR) |
     SCFCR_LOOP);
 }

 mctrl_gpio_set(s->gpios, mctrl);

 if (!s->has_rtscts)
  return;

 if (!(mctrl & TIOCM_RTS)) {

  serial_port_out(port, SCFCR,
    serial_port_in(port, SCFCR) & ~SCFCR_MCE);


  sci_set_rts(port, 0);
 } else if (s->autorts) {
  if (port->type == PORT_SCIFA || port->type == PORT_SCIFB) {

   serial_port_out(port, SCPCR,
    serial_port_in(port, SCPCR) & ~SCPCR_RTSC);
  }


  serial_port_out(port, SCFCR,
    serial_port_in(port, SCFCR) | SCFCR_MCE);
 } else {

  sci_set_rts(port, 1);
 }
}

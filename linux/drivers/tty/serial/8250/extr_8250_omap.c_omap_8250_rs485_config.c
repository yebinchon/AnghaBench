
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_rs485 {int flags; void* delay_rts_after_send; void* delay_rts_before_send; } ;
struct uart_port {struct serial_rs485 rs485; } ;
struct uart_8250_port {int dummy; } ;


 int SER_RS485_ENABLED ;
 void* min (void*,unsigned int) ;
 int serial8250_em485_destroy (struct uart_8250_port*) ;
 int serial8250_em485_init (struct uart_8250_port*) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static int omap_8250_rs485_config(struct uart_port *port,
      struct serial_rs485 *rs485)
{
 struct uart_8250_port *up = up_to_u8250p(port);


 rs485->delay_rts_before_send = min(rs485->delay_rts_before_send, 100U);
 rs485->delay_rts_after_send = min(rs485->delay_rts_after_send, 100U);

 port->rs485 = *rs485;





 if (rs485->flags & SER_RS485_ENABLED) {
  int ret = serial8250_em485_init(up);

  if (ret) {
   rs485->flags &= ~SER_RS485_ENABLED;
   port->rs485.flags &= ~SER_RS485_ENABLED;
  }
  return ret;
 }

 serial8250_em485_destroy(up);

 return 0;
}

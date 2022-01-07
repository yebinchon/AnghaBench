
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_rs485 {int delay_rts_before_send; int delay_rts_after_send; int flags; int padding; } ;
struct uart_port {struct serial_rs485 rs485; } ;
struct max310x_one {int rs_work; } ;


 int ERANGE ;
 int SER_RS485_ENABLED ;
 int SER_RS485_RTS_ON_SEND ;
 int SER_RS485_RX_DURING_TX ;
 int memset (int ,int ,int) ;
 int schedule_work (int *) ;
 struct max310x_one* to_max310x_port (struct uart_port*) ;

__attribute__((used)) static int max310x_rs485_config(struct uart_port *port,
    struct serial_rs485 *rs485)
{
 struct max310x_one *one = to_max310x_port(port);

 if ((rs485->delay_rts_before_send > 0x0f) ||
     (rs485->delay_rts_after_send > 0x0f))
  return -ERANGE;

 rs485->flags &= SER_RS485_RTS_ON_SEND | SER_RS485_RX_DURING_TX |
   SER_RS485_ENABLED;
 memset(rs485->padding, 0, sizeof(rs485->padding));
 port->rs485 = *rs485;

 schedule_work(&one->rs_work);

 return 0;
}

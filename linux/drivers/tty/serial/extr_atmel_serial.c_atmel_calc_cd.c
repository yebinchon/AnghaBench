
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
struct uart_port {int dummy; } ;
struct serial_iso7816 {int clk; } ;
struct atmel_uart_port {int clk; } ;


 scalar_t__ clk_get_rate (int ) ;
 int do_div (unsigned int,int ) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;

__attribute__((used)) static unsigned int atmel_calc_cd(struct uart_port *port,
      struct serial_iso7816 *iso7816conf)
{
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);
 unsigned int cd;
 u64 mck_rate;

 mck_rate = (u64)clk_get_rate(atmel_port->clk);
 do_div(mck_rate, iso7816conf->clk);
 cd = mck_rate;
 return cd;
}

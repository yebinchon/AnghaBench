
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int dummy; } ;


 int UART_DLL ;
 int UART_DLM ;
 int serial_in (struct uart_8250_port*,int ) ;

__attribute__((used)) static int default_serial_dl_read(struct uart_8250_port *up)
{
 return serial_in(up, UART_DLL) | serial_in(up, UART_DLM) << 8;
}

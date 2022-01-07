
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int dummy; } ;


 int UART_DLL_EM ;
 int UART_DLM_EM ;
 int serial_in (struct uart_8250_port*,int ) ;

__attribute__((used)) static int serial8250_em_serial_dl_read(struct uart_8250_port *up)
{
 return serial_in(up, UART_DLL_EM) | serial_in(up, UART_DLM_EM) << 8;
}

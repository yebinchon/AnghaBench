
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int dummy; } ;


 int UART_DLL ;
 int UART_DLM ;
 int serial_out (struct uart_8250_port*,int ,int) ;

__attribute__((used)) static void default_serial_dl_write(struct uart_8250_port *up, int value)
{
 serial_out(up, UART_DLL, value & 0xff);
 serial_out(up, UART_DLM, value >> 8 & 0xff);
}

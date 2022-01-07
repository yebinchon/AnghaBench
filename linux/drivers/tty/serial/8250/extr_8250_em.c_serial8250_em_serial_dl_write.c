
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int dummy; } ;


 int UART_DLL_EM ;
 int UART_DLM_EM ;
 int serial_out (struct uart_8250_port*,int ,int) ;

__attribute__((used)) static void serial8250_em_serial_dl_write(struct uart_8250_port *up, int value)
{
 serial_out(up, UART_DLL_EM, value & 0xff);
 serial_out(up, UART_DLM_EM, value >> 8 & 0xff);
}

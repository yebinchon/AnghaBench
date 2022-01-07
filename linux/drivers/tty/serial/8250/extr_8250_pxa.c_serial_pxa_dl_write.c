
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int dummy; } ;


 int UART_DLL ;
 int UART_DLM ;
 int WARN_ON (int) ;
 unsigned int serial_in (struct uart_8250_port*,int ) ;
 int serial_out (struct uart_8250_port*,int ,int) ;

__attribute__((used)) static void serial_pxa_dl_write(struct uart_8250_port *up, int value)
{
 unsigned int dll;

 serial_out(up, UART_DLL, value & 0xff);




 dll = serial_in(up, UART_DLL);
 WARN_ON(dll != (value & 0xff));

 serial_out(up, UART_DLM, value >> 8 & 0xff);
}

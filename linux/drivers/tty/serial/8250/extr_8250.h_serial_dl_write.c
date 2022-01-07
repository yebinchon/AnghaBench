
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int (* dl_write ) (struct uart_8250_port*,int) ;} ;


 int stub1 (struct uart_8250_port*,int) ;

__attribute__((used)) static inline void serial_dl_write(struct uart_8250_port *up, int value)
{
 up->dl_write(up, value);
}

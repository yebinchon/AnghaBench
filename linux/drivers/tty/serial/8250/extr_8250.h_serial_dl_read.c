
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int (* dl_read ) (struct uart_8250_port*) ;} ;


 int stub1 (struct uart_8250_port*) ;

__attribute__((used)) static inline int serial_dl_read(struct uart_8250_port *up)
{
 return up->dl_read(up);
}

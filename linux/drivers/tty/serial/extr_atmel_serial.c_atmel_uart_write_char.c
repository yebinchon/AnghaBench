
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uart_port {scalar_t__ membase; } ;


 scalar_t__ ATMEL_US_THR ;
 int __raw_writeb (int ,scalar_t__) ;

__attribute__((used)) static inline void atmel_uart_write_char(struct uart_port *port, u8 value)
{
 __raw_writeb(value, port->membase + ATMEL_US_THR);
}

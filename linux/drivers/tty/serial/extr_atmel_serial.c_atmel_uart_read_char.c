
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uart_port {scalar_t__ membase; } ;


 scalar_t__ ATMEL_US_RHR ;
 int __raw_readb (scalar_t__) ;

__attribute__((used)) static inline u8 atmel_uart_read_char(struct uart_port *port)
{
 return __raw_readb(port->membase + ATMEL_US_RHR);
}

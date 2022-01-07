
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static inline void serial_out(struct uart_port *port, unsigned int offset,
         int value)
{
 writel_relaxed(value, port->membase + offset);
}

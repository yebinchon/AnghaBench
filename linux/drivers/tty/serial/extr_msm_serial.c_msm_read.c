
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 unsigned int readl_relaxed (scalar_t__) ;

__attribute__((used)) static
unsigned int msm_read(struct uart_port *port, unsigned int off)
{
 return readl_relaxed(port->membase + off);
}

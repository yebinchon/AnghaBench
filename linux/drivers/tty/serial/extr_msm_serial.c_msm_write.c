
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 int writel_relaxed (unsigned int,scalar_t__) ;

__attribute__((used)) static
void msm_write(struct uart_port *port, unsigned int val, unsigned int off)
{
 writel_relaxed(val, port->membase + off);
}

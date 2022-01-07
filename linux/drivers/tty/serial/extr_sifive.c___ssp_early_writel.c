
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct uart_port {scalar_t__ membase; } ;


 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void __ssp_early_writel(u32 v, u16 offs, struct uart_port *port)
{
 writel_relaxed(v, port->membase + offs);
}

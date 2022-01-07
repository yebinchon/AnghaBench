
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 int ASCWHBSTATE_CLRREN ;
 scalar_t__ LTQ_ASC_WHBSTATE ;
 int __raw_writel (int ,scalar_t__) ;

__attribute__((used)) static void
lqasc_stop_rx(struct uart_port *port)
{
 __raw_writel(ASCWHBSTATE_CLRREN, port->membase + LTQ_ASC_WHBSTATE);
}

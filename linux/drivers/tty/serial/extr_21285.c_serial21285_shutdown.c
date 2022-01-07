
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int IRQ_CONRX ;
 int IRQ_CONTX ;
 int free_irq (int ,struct uart_port*) ;

__attribute__((used)) static void serial21285_shutdown(struct uart_port *port)
{
 free_irq(IRQ_CONTX, port);
 free_irq(IRQ_CONRX, port);
}

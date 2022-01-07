
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int line; } ;


 size_t RX ;
 size_t TX ;
 int free_irq (int ,struct uart_port*) ;
 int ** mlb_usio_irq ;

__attribute__((used)) static void mlb_usio_shutdown(struct uart_port *port)
{
 int index = port->line;

 free_irq(mlb_usio_irq[index][RX], port);
 free_irq(mlb_usio_irq[index][TX], port);
}

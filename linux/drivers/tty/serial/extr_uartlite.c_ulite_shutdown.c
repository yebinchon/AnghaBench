
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uartlite_data {int clk; } ;
struct uart_port {int irq; struct uartlite_data* private_data; } ;


 int ULITE_CONTROL ;
 int clk_disable (int ) ;
 int free_irq (int ,struct uart_port*) ;
 int uart_in32 (int ,struct uart_port*) ;
 int uart_out32 (int ,int ,struct uart_port*) ;

__attribute__((used)) static void ulite_shutdown(struct uart_port *port)
{
 struct uartlite_data *pdata = port->private_data;

 uart_out32(0, ULITE_CONTROL, port);
 uart_in32(ULITE_CONTROL, port);
 free_irq(port->irq, port);
 clk_disable(pdata->clk);
}

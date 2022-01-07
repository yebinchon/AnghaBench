
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int irq; } ;
struct efm32_uart_port {int clk; } ;


 int UARTn_IEN ;
 int clk_disable (int ) ;
 int efm32_uart_write32 (struct efm32_uart_port*,int ,int ) ;
 int free_irq (int ,struct efm32_uart_port*) ;
 struct efm32_uart_port* to_efm_port (struct uart_port*) ;

__attribute__((used)) static void efm32_uart_shutdown(struct uart_port *port)
{
 struct efm32_uart_port *efm_port = to_efm_port(port);

 efm32_uart_write32(efm_port, 0, UARTn_IEN);
 free_irq(port->irq, efm_port);

 clk_disable(efm_port->clk);
}

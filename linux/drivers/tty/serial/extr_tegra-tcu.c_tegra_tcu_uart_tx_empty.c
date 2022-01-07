
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 unsigned int TIOCSER_TEMT ;

__attribute__((used)) static unsigned int tegra_tcu_uart_tx_empty(struct uart_port *port)
{
 return TIOCSER_TEMT;
}

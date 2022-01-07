
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owl_uart_port {int clk; } ;


 int clk_set_rate (int ,unsigned long) ;

__attribute__((used)) static void owl_uart_change_baudrate(struct owl_uart_port *owl_port,
         unsigned long baud)
{
 clk_set_rate(owl_port->clk, baud * 8);
}

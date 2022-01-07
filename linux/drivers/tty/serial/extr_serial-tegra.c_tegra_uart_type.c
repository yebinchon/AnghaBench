
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 char const* TEGRA_UART_TYPE ;

__attribute__((used)) static const char *tegra_uart_type(struct uart_port *u)
{
 return TEGRA_UART_TYPE;
}

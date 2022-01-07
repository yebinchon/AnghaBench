
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int RP2_TXRX_CTL ;
 int RP2_TXRX_CTL_MSRIRQ_m ;
 int port_to_up (struct uart_port*) ;
 int rp2_rmw_set (int ,int ,int ) ;

__attribute__((used)) static void rp2_uart_enable_ms(struct uart_port *port)
{
 rp2_rmw_set(port_to_up(port), RP2_TXRX_CTL, RP2_TXRX_CTL_MSRIRQ_m);
}

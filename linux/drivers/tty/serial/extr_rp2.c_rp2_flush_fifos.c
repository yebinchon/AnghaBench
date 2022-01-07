
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rp2_uart_port {scalar_t__ base; } ;


 scalar_t__ RP2_UART_CTL ;
 int RP2_UART_CTL_FLUSH_RX_m ;
 int RP2_UART_CTL_FLUSH_TX_m ;
 int readl (scalar_t__) ;
 int rp2_rmw_clr (struct rp2_uart_port*,scalar_t__,int) ;
 int rp2_rmw_set (struct rp2_uart_port*,scalar_t__,int) ;
 int udelay (int) ;

__attribute__((used)) static inline void rp2_flush_fifos(struct rp2_uart_port *up)
{
 rp2_rmw_set(up, RP2_UART_CTL,
      RP2_UART_CTL_FLUSH_RX_m | RP2_UART_CTL_FLUSH_TX_m);
 readl(up->base + RP2_UART_CTL);
 udelay(10);
 rp2_rmw_clr(up, RP2_UART_CTL,
      RP2_UART_CTL_FLUSH_RX_m | RP2_UART_CTL_FLUSH_TX_m);
}

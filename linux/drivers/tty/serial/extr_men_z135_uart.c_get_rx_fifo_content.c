
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct uart_port {scalar_t__ membase; } ;
struct men_z135_port {struct uart_port port; } ;


 scalar_t__ MEN_Z135_STAT_REG ;
 int ioread32 (scalar_t__) ;

__attribute__((used)) static u16 get_rx_fifo_content(struct men_z135_port *uart)
{
 struct uart_port *port = &uart->port;
 u32 stat_reg;
 u16 rxc;
 u8 rxc_lo;
 u8 rxc_hi;

 stat_reg = ioread32(port->membase + MEN_Z135_STAT_REG);
 rxc_lo = stat_reg >> 24;
 rxc_hi = (stat_reg & 0xC0) >> 6;

 rxc = rxc_lo | (rxc_hi << 8);

 return rxc;
}

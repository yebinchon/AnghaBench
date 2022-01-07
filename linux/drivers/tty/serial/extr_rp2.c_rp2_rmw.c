
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rp2_uart_port {scalar_t__ base; } ;


 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void rp2_rmw(struct rp2_uart_port *up, int reg,
      u32 clr_bits, u32 set_bits)
{
 u32 tmp = readl(up->base + reg);
 tmp &= ~clr_bits;
 tmp |= set_bits;
 writel(tmp, up->base + reg);
}

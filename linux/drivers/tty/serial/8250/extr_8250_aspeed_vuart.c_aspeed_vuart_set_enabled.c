
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct aspeed_vuart {scalar_t__ regs; } ;


 scalar_t__ ASPEED_VUART_GCRA ;
 int ASPEED_VUART_GCRA_VUART_EN ;
 int readb (scalar_t__) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void aspeed_vuart_set_enabled(struct aspeed_vuart *vuart, bool enabled)
{
 u8 reg = readb(vuart->regs + ASPEED_VUART_GCRA);

 if (enabled)
  reg |= ASPEED_VUART_GCRA_VUART_EN;
 else
  reg &= ~ASPEED_VUART_GCRA_VUART_EN;

 writeb(reg, vuart->regs + ASPEED_VUART_GCRA);
}

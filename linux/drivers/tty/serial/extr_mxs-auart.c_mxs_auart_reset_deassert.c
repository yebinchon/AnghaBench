
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_auart_port {int dummy; } ;


 unsigned int AUART_CTRL0_CLKGATE ;
 unsigned int AUART_CTRL0_SFTRST ;
 int REG_CTRL0 ;
 int mxs_clr (unsigned int,struct mxs_auart_port*,int ) ;
 unsigned int mxs_read (struct mxs_auart_port*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void mxs_auart_reset_deassert(struct mxs_auart_port *s)
{
 int i;
 unsigned int reg;

 mxs_clr(AUART_CTRL0_SFTRST, s, REG_CTRL0);

 for (i = 0; i < 10000; i++) {
  reg = mxs_read(s, REG_CTRL0);
  if (!(reg & AUART_CTRL0_SFTRST))
   break;
  udelay(3);
 }
 mxs_clr(AUART_CTRL0_CLKGATE, s, REG_CTRL0);
}

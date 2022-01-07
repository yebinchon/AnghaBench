
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxs_auart_port {int dev; } ;


 int AUART_CTRL0_CLKGATE ;
 int AUART_CTRL0_SFTRST ;
 int REG_CTRL0 ;
 int dev_err (int ,char*) ;
 int mxs_clr (int,struct mxs_auart_port*,int ) ;
 int mxs_read (struct mxs_auart_port*,int ) ;
 int mxs_set (int,struct mxs_auart_port*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void mxs_auart_reset_assert(struct mxs_auart_port *s)
{
 int i;
 u32 reg;

 reg = mxs_read(s, REG_CTRL0);

 if (reg & AUART_CTRL0_SFTRST)
  return;

 mxs_clr(AUART_CTRL0_CLKGATE, s, REG_CTRL0);
 mxs_set(AUART_CTRL0_SFTRST, s, REG_CTRL0);

 for (i = 0; i < 1000; i++) {
  reg = mxs_read(s, REG_CTRL0);

  if (reg & AUART_CTRL0_CLKGATE)
   return;
  udelay(10);
 }

 dev_err(s->dev, "Failed to reset the unit.");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;
struct spear_pmx {int dummy; } ;
struct spear_muxreg {size_t mask; size_t val; int reg; } ;


 size_t pmx_readl (struct spear_pmx*,int ) ;
 int pmx_writel (struct spear_pmx*,size_t,int ) ;

__attribute__((used)) static void muxregs_endisable(struct spear_pmx *pmx,
  struct spear_muxreg *muxregs, u8 count, bool enable)
{
 struct spear_muxreg *muxreg;
 u32 val, temp, j;

 for (j = 0; j < count; j++) {
  muxreg = &muxregs[j];

  val = pmx_readl(pmx, muxreg->reg);
  val &= ~muxreg->mask;

  if (enable)
   temp = muxreg->val;
  else
   temp = ~muxreg->val;

  val |= muxreg->mask & temp;
  pmx_writel(pmx, val, muxreg->reg);
 }
}

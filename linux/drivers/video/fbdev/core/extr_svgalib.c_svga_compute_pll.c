
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct svga_pll {int r_max; int r_min; int f_vco_max; int f_vco_min; int m_min; int n_min; int m_max; int n_max; int f_base; } ;


 int EINVAL ;
 int abs_diff (int,int) ;
 int pr_debug (char*,int,unsigned int,...) ;

int svga_compute_pll(const struct svga_pll *pll, u32 f_wanted, u16 *m, u16 *n, u16 *r, int node)
{
 u16 am, an, ar;
 u32 f_vco, f_current, delta_current, delta_best;

 pr_debug("fb%d: ideal frequency: %d kHz\n", node, (unsigned int) f_wanted);

 ar = pll->r_max;
 f_vco = f_wanted << ar;


 if ((f_vco >> ar) != f_wanted)
  return -EINVAL;




 while ((ar > pll->r_min) && (f_vco > pll->f_vco_max)) {
  ar--;
  f_vco = f_vco >> 1;
 }


 if ((f_vco < pll->f_vco_min) || (f_vco > pll->f_vco_max))
  return -EINVAL;

 delta_best = 0xFFFFFFFF;
 *m = 0;
 *n = 0;
 *r = ar;

 am = pll->m_min;
 an = pll->n_min;

 while ((am <= pll->m_max) && (an <= pll->n_max)) {
  f_current = (pll->f_base * am) / an;
  delta_current = abs_diff (f_current, f_vco);

  if (delta_current < delta_best) {
   delta_best = delta_current;
   *m = am;
   *n = an;
  }

  if (f_current <= f_vco) {
   am ++;
  } else {
   an ++;
  }
 }

 f_current = (pll->f_base * *m) / *n;
 pr_debug("fb%d: found frequency: %d kHz (VCO %d kHz)\n", node, (int) (f_current >> ar), (int) f_current);
 pr_debug("fb%d: m = %d n = %d r = %d\n", node, (unsigned int) *m, (unsigned int) *n, (unsigned int) *r);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pll_value {unsigned int POD; unsigned int OD; unsigned int M; unsigned int N; } ;


 unsigned int PLL_CTRL_M_MASK ;
 unsigned int PLL_CTRL_M_SHIFT ;
 unsigned int PLL_CTRL_N_MASK ;
 unsigned int PLL_CTRL_N_SHIFT ;
 unsigned int PLL_CTRL_OD_MASK ;
 unsigned int PLL_CTRL_OD_SHIFT ;
 unsigned int PLL_CTRL_POD_MASK ;
 unsigned int PLL_CTRL_POD_SHIFT ;
 unsigned int PLL_CTRL_POWER ;

unsigned int sm750_format_pll_reg(struct pll_value *pPLL)
{

 unsigned int POD = pPLL->POD;

 unsigned int OD = pPLL->OD;
 unsigned int M = pPLL->M;
 unsigned int N = pPLL->N;







 return PLL_CTRL_POWER |

  ((POD << PLL_CTRL_POD_SHIFT) & PLL_CTRL_POD_MASK) |

  ((OD << PLL_CTRL_OD_SHIFT) & PLL_CTRL_OD_MASK) |
  ((N << PLL_CTRL_N_SHIFT) & PLL_CTRL_N_MASK) |
  ((M << PLL_CTRL_M_SHIFT) & PLL_CTRL_M_MASK);
}

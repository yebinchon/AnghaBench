
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aty128fb_par {int dummy; } ;


 int PPLL_ATOMIC_UPDATE_W ;
 int PPLL_REF_DIV ;
 int aty_ld_pll (int ) ;
 int aty_pll_wait_readupdate (struct aty128fb_par const*) ;
 int aty_st_pll (int ,int) ;

__attribute__((used)) static void aty_pll_writeupdate(const struct aty128fb_par *par)
{
 aty_pll_wait_readupdate(par);

 aty_st_pll(PPLL_REF_DIV,
     aty_ld_pll(PPLL_REF_DIV) | PPLL_ATOMIC_UPDATE_W);
}

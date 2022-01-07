
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m; int n; } ;
union aty_pll {TYPE_1__ ibm514; } ;
struct fb_info {scalar_t__ par; } ;
struct atyfb_par {int dummy; } ;


 int aty_st_514 (int,int,struct atyfb_par*) ;

__attribute__((used)) static void aty_set_pll_514(const struct fb_info *info,
       const union aty_pll *pll)
{
 struct atyfb_par *par = (struct atyfb_par *) info->par;

 aty_st_514(0x06, 0x02, par);
 aty_st_514(0x10, 0x01, par);
 aty_st_514(0x70, 0x01, par);
 aty_st_514(0x8f, 0x1f, par);
 aty_st_514(0x03, 0x00, par);
 aty_st_514(0x05, 0x00, par);
 aty_st_514(0x20, pll->ibm514.m, par);
 aty_st_514(0x21, pll->ibm514.n, par);
}

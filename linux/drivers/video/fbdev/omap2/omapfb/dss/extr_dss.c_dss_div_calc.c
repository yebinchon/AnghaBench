
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int (* dss_div_calc_func ) (unsigned long,void*) ;
struct TYPE_4__ {int * parent_clk; TYPE_1__* feat; int dss_clk; } ;
struct TYPE_3__ {unsigned long fck_div_max; unsigned int dss_fck_multiplier; } ;


 unsigned int DIV_ROUND_UP (unsigned long,int) ;
 int FEAT_PARAM_DSS_FCK ;
 unsigned long clk_get_rate (int *) ;
 unsigned long clk_round_rate (int ,unsigned long) ;
 TYPE_2__ dss ;
 unsigned long dss_feat_get_param_max (int ) ;
 int max (unsigned int,unsigned long) ;
 int min (unsigned long,unsigned long) ;

bool dss_div_calc(unsigned long pck, unsigned long fck_min,
  dss_div_calc_func func, void *data)
{
 int fckd, fckd_start, fckd_stop;
 unsigned long fck;
 unsigned long fck_hw_max;
 unsigned long fckd_hw_max;
 unsigned long prate;
 unsigned m;

 fck_hw_max = dss_feat_get_param_max(FEAT_PARAM_DSS_FCK);

 if (dss.parent_clk == ((void*)0)) {
  unsigned pckd;

  pckd = fck_hw_max / pck;

  fck = pck * pckd;

  fck = clk_round_rate(dss.dss_clk, fck);

  return func(fck, data);
 }

 fckd_hw_max = dss.feat->fck_div_max;

 m = dss.feat->dss_fck_multiplier;
 prate = clk_get_rate(dss.parent_clk);

 fck_min = fck_min ? fck_min : 1;

 fckd_start = min(prate * m / fck_min, fckd_hw_max);
 fckd_stop = max(DIV_ROUND_UP(prate * m, fck_hw_max), 1ul);

 for (fckd = fckd_start; fckd >= fckd_stop; --fckd) {
  fck = DIV_ROUND_UP(prate, fckd) * m;

  if (func(fck, data))
   return 1;
 }

 return 0;
}

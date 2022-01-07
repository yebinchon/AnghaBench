
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ (* dispc_div_calc_func ) (int,int,unsigned long,unsigned long,void*) ;


 unsigned int CONFIG_FB_OMAP2_DSS_MIN_FCK_PER_PCK ;
 int DIV_ROUND_UP (unsigned long,unsigned long) ;
 int FEAT_CORE_CLK_DIV ;
 int FEAT_PARAM_DSS_FCK ;
 int FEAT_PARAM_DSS_PCD ;
 unsigned long ULONG_MAX ;
 unsigned long dispc_core_clk_rate () ;
 unsigned long dss_feat_get_param_max (int ) ;
 unsigned long dss_feat_get_param_min (int ) ;
 scalar_t__ dss_has_feature (int ) ;
 int max (int ,unsigned long) ;
 int min (unsigned long,unsigned long) ;

bool dispc_div_calc(unsigned long dispc,
  unsigned long pck_min, unsigned long pck_max,
  dispc_div_calc_func func, void *data)
{
 int lckd, lckd_start, lckd_stop;
 int pckd, pckd_start, pckd_stop;
 unsigned long pck, lck;
 unsigned long lck_max;
 unsigned long pckd_hw_min, pckd_hw_max;
 unsigned min_fck_per_pck;
 unsigned long fck;




 min_fck_per_pck = 0;


 pckd_hw_min = dss_feat_get_param_min(FEAT_PARAM_DSS_PCD);
 pckd_hw_max = dss_feat_get_param_max(FEAT_PARAM_DSS_PCD);

 lck_max = dss_feat_get_param_max(FEAT_PARAM_DSS_FCK);

 pck_min = pck_min ? pck_min : 1;
 pck_max = pck_max ? pck_max : ULONG_MAX;

 lckd_start = max(DIV_ROUND_UP(dispc, lck_max), 1ul);
 lckd_stop = min(dispc / pck_min, 255ul);

 for (lckd = lckd_start; lckd <= lckd_stop; ++lckd) {
  lck = dispc / lckd;

  pckd_start = max(DIV_ROUND_UP(lck, pck_max), pckd_hw_min);
  pckd_stop = min(lck / pck_min, pckd_hw_max);

  for (pckd = pckd_start; pckd <= pckd_stop; ++pckd) {
   pck = lck / pckd;







   if (dss_has_feature(FEAT_CORE_CLK_DIV))
    fck = dispc_core_clk_rate();
   else
    fck = lck;

   if (fck < pck * min_fck_per_pck)
    continue;

   if (func(lckd, pckd, lck, pck, data))
    return 1;
  }
 }

 return 0;
}

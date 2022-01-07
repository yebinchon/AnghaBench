
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dss_pll_clock_info {int dummy; } ;
struct dss_pll {struct dss_pll_clock_info cinfo; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_config ) (struct dss_pll*,struct dss_pll_clock_info const*) ;} ;


 int stub1 (struct dss_pll*,struct dss_pll_clock_info const*) ;

int dss_pll_set_config(struct dss_pll *pll, const struct dss_pll_clock_info *cinfo)
{
 int r;

 r = pll->ops->set_config(pll, cinfo);
 if (r)
  return r;

 pll->cinfo = *cinfo;

 return 0;
}

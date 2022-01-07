
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dss_pll {int cinfo; int clkin; scalar_t__ regulator; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* disable ) (struct dss_pll*) ;} ;


 int clk_disable_unprepare (int ) ;
 int memset (int *,int ,int) ;
 int regulator_disable (scalar_t__) ;
 int stub1 (struct dss_pll*) ;

void dss_pll_disable(struct dss_pll *pll)
{
 pll->ops->disable(pll);

 if (pll->regulator)
  regulator_disable(pll->regulator);

 clk_disable_unprepare(pll->clkin);

 memset(&pll->cinfo, 0, sizeof(pll->cinfo));
}

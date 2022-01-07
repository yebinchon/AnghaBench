
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct geni_wrapper {int ahb_clks; } ;
struct geni_se {int clk; struct geni_wrapper* wrapper; } ;


 int ARRAY_SIZE (int ) ;
 int clk_bulk_disable_unprepare (int ,int ) ;
 int clk_bulk_prepare_enable (int ,int ) ;
 int clk_prepare_enable (int ) ;

__attribute__((used)) static int geni_se_clks_on(struct geni_se *se)
{
 int ret;
 struct geni_wrapper *wrapper = se->wrapper;

 ret = clk_bulk_prepare_enable(ARRAY_SIZE(wrapper->ahb_clks),
      wrapper->ahb_clks);
 if (ret)
  return ret;

 ret = clk_prepare_enable(se->clk);
 if (ret)
  clk_bulk_disable_unprepare(ARRAY_SIZE(wrapper->ahb_clks),
       wrapper->ahb_clks);
 return ret;
}

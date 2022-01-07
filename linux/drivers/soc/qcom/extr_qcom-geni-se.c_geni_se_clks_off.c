
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct geni_wrapper {int ahb_clks; } ;
struct geni_se {int clk; struct geni_wrapper* wrapper; } ;


 int ARRAY_SIZE (int ) ;
 int clk_bulk_disable_unprepare (int ,int ) ;
 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void geni_se_clks_off(struct geni_se *se)
{
 struct geni_wrapper *wrapper = se->wrapper;

 clk_disable_unprepare(se->clk);
 clk_bulk_disable_unprepare(ARRAY_SIZE(wrapper->ahb_clks),
      wrapper->ahb_clks);
}

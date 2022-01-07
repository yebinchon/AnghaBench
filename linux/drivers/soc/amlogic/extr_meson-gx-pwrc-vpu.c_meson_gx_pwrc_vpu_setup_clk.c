
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_gx_pwrc_vpu {int vpu_clk; int vapb_clk; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;

__attribute__((used)) static int meson_gx_pwrc_vpu_setup_clk(struct meson_gx_pwrc_vpu *pd)
{
 int ret;

 ret = clk_prepare_enable(pd->vpu_clk);
 if (ret)
  return ret;

 ret = clk_prepare_enable(pd->vapb_clk);
 if (ret)
  clk_disable_unprepare(pd->vpu_clk);

 return ret;
}

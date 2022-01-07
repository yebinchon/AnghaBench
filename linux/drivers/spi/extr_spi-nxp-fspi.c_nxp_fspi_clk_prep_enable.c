
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nxp_fspi {int clk_en; int clk; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;

__attribute__((used)) static int nxp_fspi_clk_prep_enable(struct nxp_fspi *f)
{
 int ret;

 ret = clk_prepare_enable(f->clk_en);
 if (ret)
  return ret;

 ret = clk_prepare_enable(f->clk);
 if (ret) {
  clk_disable_unprepare(f->clk_en);
  return ret;
 }

 return 0;
}

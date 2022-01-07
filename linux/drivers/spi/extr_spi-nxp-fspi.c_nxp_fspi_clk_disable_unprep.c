
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nxp_fspi {int clk_en; int clk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void nxp_fspi_clk_disable_unprep(struct nxp_fspi *f)
{
 clk_disable_unprepare(f->clk);
 clk_disable_unprepare(f->clk_en);
}

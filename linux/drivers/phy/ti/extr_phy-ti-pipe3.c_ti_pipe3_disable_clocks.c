
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_pipe3 {int sata_refclk_enabled; int div_clk; int refclk; int wkupclk; } ;


 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void ti_pipe3_disable_clocks(struct ti_pipe3 *phy)
{
 if (!IS_ERR(phy->wkupclk))
  clk_disable_unprepare(phy->wkupclk);
 if (!IS_ERR(phy->refclk)) {
  clk_disable_unprepare(phy->refclk);




  if (phy->sata_refclk_enabled) {
   clk_disable_unprepare(phy->refclk);
   phy->sata_refclk_enabled = 0;
  }
 }

 if (!IS_ERR(phy->div_clk))
  clk_disable_unprepare(phy->div_clk);
}

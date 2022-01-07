
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpuart_port {int ipg_clk; int baud_clk; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;

__attribute__((used)) static int __lpuart_enable_clks(struct lpuart_port *sport, bool is_en)
{
 int ret = 0;

 if (is_en) {
  ret = clk_prepare_enable(sport->ipg_clk);
  if (ret)
   return ret;

  ret = clk_prepare_enable(sport->baud_clk);
  if (ret) {
   clk_disable_unprepare(sport->ipg_clk);
   return ret;
  }
 } else {
  clk_disable_unprepare(sport->baud_clk);
  clk_disable_unprepare(sport->ipg_clk);
 }

 return 0;
}

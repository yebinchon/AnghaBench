
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_otg {int clk; } ;


 int clk_prepare_enable (int ) ;

__attribute__((used)) static void otg_clock_enable(struct mv_otg *mvotg)
{
 clk_prepare_enable(mvotg->clk);
}

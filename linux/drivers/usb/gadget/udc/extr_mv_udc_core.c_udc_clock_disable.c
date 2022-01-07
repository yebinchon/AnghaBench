
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_udc {int clk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void udc_clock_disable(struct mv_udc *udc)
{
 clk_disable_unprepare(udc->clk);
}

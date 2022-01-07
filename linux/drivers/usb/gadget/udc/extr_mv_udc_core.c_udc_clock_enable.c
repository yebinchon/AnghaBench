
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_udc {int clk; } ;


 int clk_prepare_enable (int ) ;

__attribute__((used)) static int udc_clock_enable(struct mv_udc *udc)
{
 return clk_prepare_enable(udc->clk);
}

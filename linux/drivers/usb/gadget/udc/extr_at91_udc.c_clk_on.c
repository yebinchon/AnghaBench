
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_udc {int clocked; int fclk; int iclk; } ;


 int clk_enable (int ) ;

__attribute__((used)) static void clk_on(struct at91_udc *udc)
{
 if (udc->clocked)
  return;
 udc->clocked = 1;

 clk_enable(udc->iclk);
 clk_enable(udc->fclk);
}
